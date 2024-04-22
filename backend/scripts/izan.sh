#!/bin/bash

# Define consts
SERVICE_POSTGRES="postgres-service"
NAMESPACE="default"

# Define the dictionary
declare -A services
services=( ["services"]="$NAMESPACE")

# Function to print the spinning sand clock animation and wait 6 * $2 seconds
print_clock_animation() {
  frames=("🕛" "🕐" "🕑" "🕒" "🕓" "🕔" "🕕" "🕖" "🕗" "🕘" "🕙" "🕚")

  total_frames=${#frames[@]}

  for ((loop = 0; loop < $2; loop++)); do
    for ((i = 0; i < total_frames; i++)); do
        echo -ne "\r${frames[i]}  $1"
        sleep 0.5
    done
  done
}

# Wrapper function to print "OK" or "KO" emoji and execute the provided function
# Execute the provided function and capture its output (including errors)
execute_if_failure() {
  output=$( "$@" 2>&1 )
  exit_status=$?

  if [ $exit_status -eq 0 ]; then
    echo -n "✅  "
  else
    echo -n "❌  "
  fi

  echo "$output"
}

execute_if_warning() {
  output=$( "$@" 2>&1 )
  exit_status=$?

  if [ $exit_status -eq 0 ]; then
    echo -n "✅  "
  else
    echo -n "🚧  "
  fi

  echo "$output"
}

# Define function for kubectl command with minikube context
kubelocal() {
  kubectl --context=minikube "$@"
}

# Define function for helm command with minikube context
helmlocal() {
  helm --kube-context minikube "$@"
}

# Apply Tiller to namespaces
apply_tiller() {
  namespace=$1
  kubelocal apply -f ../config/helm/"$namespace"-tiller.yaml
  helmlocal --tiller-namespace $namespace init --service-account tiller --override spec.selector.matchLabels.'name'='tiller',spec.selector.matchLabels.'app'='helm' --output yaml| sed 's@apiVersion: extensions/v1beta1@apiVersion: apps/v1@' | sed 's@image: gcr.io/kubernetes-helm/tiller:v2.13.1@image: ghcr.io/helm/tiller:v2.13.1@' | kubelocal apply -f -
}

# Define function for nexus command with minikube context
nxctlmini() {
  nxctl -c local -s minikube.nexus:1717 "$@"
}

# Wait since pod is in running state
wait_running() { 
  pod=$1
  namespace=$2
  echo "⏰  Waiting for $pod pod to be in 'Running' state..."
  while true; do
    status=$(kubelocal get pods -n $namespace $pod -o jsonpath='{.status.phase}')
    if [[ $status == "Running" ]]; then
      echo ""
      echo "🔔  $pod is 'Running'."
      break
    fi
    print_clock_animation "  $pod is '$status'. Waiting..." 1
  done
}

remove_service() {
  service=$1
  namespace=$2

  echo "🧨  Deleting release: $service"
  echo -n "💥   "
  helmlocal --tiller-namespace $namespace delete --purge $service
}

remove_namespace_services() {
  namespace=$1

  # Get a list of all the services
  services=$(helmlocal --tiller-namespace $namespace list --all --short)

  # Loop through the releases and delete them
  for service in $services
  do
    remove_service $service $namespace
  done
}

clean_docker() {
  # Remove Docker images and containers for each service in the dictionary
  echo "🐋  Cleaning docker"
  for key in "${!services[@]}"; do
    # Form the ancestor image name
    ancestor="${services[$key]}/${key}"

    # Get the IDs of all images
    images_ids=$(docker images $ancestor --format "{{.ID}}" 2>/dev/null)

    for image in $images_ids; do
      id=$(docker inspect --format='{{.Parent}}' $image 2>/dev/null)

      # Get the IDs of all containers using the image
      containers=$(docker ps -a --filter "ancestor=$id" --format "{{.ID}}" 2>/dev/null)

      # Rmove containers
      for container in $containers; do
        docker rm $container 2>/dev/null
      done
    
      # Remove images
      docker rmi $image 2>/dev/null
    done
  done
  echo "🧼  Cleaned docker"
}

deploy_service() {
  service=$1
  namespace=$2
  start="config/services"
  final="_local.conf.yaml"
  config_file=$start$final

  # Remove it if pod is running
  old_pod_service=$(kubelocal get pods -n $namespace -l app=$service -o jsonpath='{.items[0].metadata.name}' 2>/dev/null)
  status=$(kubelocal get pods -n $namespace $old_pod_service -o jsonpath='{.status.phase}')
  if [[ $status == "Running" ]]; then
      remove_service $service $namespace
  fi

  # Deploy service
  echo "⏰   Deploying $service"
  sleep 3
  nayardeploy --c $config_file --minikube=true $service
  sleep 2
  pod_service=$(kubelocal get pods -n $namespace -l app=$service -o jsonpath='{.items[0].metadata.name}')

  # Wait since service running
  wait_running $pod_service $namespace
}

nayar_deploy() {
  echo "⏰   Deploying services"

  # Change to config directory
  cd ../

  # Loop through the parameters and get the corresponding namespace from the dictionary
  for service in "$@"
  do
    namespace="${services[$service]}"
    if [ -z "$namespace" ]; then
      echo "💀    Error: Key '$service' not found."
    else
      deploy_service $service $namespace
    fi
  done
}

start() {
  # Check if minikube is running
  if minikube status >/dev/null 2>&1; then
    echo "👍  Minikube is already running"
  else
    # Check if a minikube instance exists
    if minikube profile list | grep -q minikube >/dev/null 2>&1; then
      # Start the existing minikube instance
      echo "⚙️   Starting existing minikube instance"
      minikube start -p minikube
    else
      # Create a new minikube instance
      echo "🛠️   Creating new minikube instance"
      minikube start -p minikube

      # Ejecute Minikube tunnel  in the background
      minikube tunnel --cleanup=true > /dev/null 2>&1 &
      minikube mount /tmp/volumes:/data > /dev/null 2>&1 &
      print_clock_animation "Waiting tunnel" 1; echo ""

      # Apply tiller to namespaces
      execute_if_failure apply_tiller $NAMESPACE

      # Run postgres and nexus pod
      execute_if_failure kubelocal apply -f postgres.yaml
      
      print_clock_animation "Waiting deployments" 2; echo ""

      # Create apolo database
      POD_POSTGRES=$(kubelocal get pods -n $NAMESPACE -l app=postgres -o jsonpath='{.items[0].metadata.name}')

      # Waiting postgres pod
      wait_running $POD_POSTGRES $NAMESPACE
      print_clock_animation "Waiting start pods" 2; echo ""

      # Create 'apolo' database
      execute_if_failure kubelocal -n $NAMESPACE exec $POD_POSTGRES -- psql -U postgres -c 'CREATE DATABASE test;'

      # Obtener el nombre del balanceador de carga
      LB_POSTGRES_IP=$(kubelocal get service ${SERVICE_POSTGRES} -n ${NAMESPACE} -o=jsonpath='{.status.loadBalancer.ingress[0].ip}')

      # Check if "minikube.postgres" exists in /etc/hosts
      if grep -q "minikube.postgres" /etc/hosts; then
        sudo sed -i "s/^.*minikube\.postgres/$LB_POSTGRES_IP\tminikube.postgres/g" /etc/hosts
      else
        echo "$LB_POSTGRES_IP minikube.postgres" | sudo tee -a /etc/hosts > /dev/null
      fi

    fi
  fi
}

# Function to show instructions
show_instructions() {
    echo "Usage: $0 [clear|remove|services...]"
    echo "  clear         - Delete all services managed by Tiller"
    echo "  remove        - Delete the Minikube cluster"
    echo "  void          - Starts the Minikube without services"
    echo "  services...   - Services to deploy separated by a space"
    echo -n "Services: ["
    for key in "${!services[@]}"; do
      echo -n " $key "
    done
    echo "]"
}

# Check if no parameter is provided
if [ $# -eq 0 ]; then
    show_instructions
    exit 1
fi

# Check if the parameter is 'void'
if [ "$1" = "void" ]; then
    sudo -v 
    # Starts minikube without services
    start
    echo "🚶  No services deployed"
    
    # Print all started
    kubelocal get all --all-namespaces

    # Logout like sudo
    sudo -k

    echo "👌  DONE"
    exit 0
fi

# Check if the parameter is 'clear'
if [ "$1" = "clear" ]; then
    # Delete all services managed by Tiller
    echo "🔥  Deleting all services managed by Tiller..."
    remove_namespace_services $NAMESPACE
    
    # Clean local docker
    clean_docker
    exit 0
fi

# Check if the parameter is 'reset'
if [ "$1" = "remove" ]; then
    # Clean local docker
    clean_docker

    # Delete the Minikube cluster
    echo "💣  Deleting the minikube cluster..."
    minikube delete
    exit 0
fi

# Log as sudo
sudo -v 

# If the parameter is not recognized, deploy services
start

# Deploy services
nayar_deploy $@
sleep 1

# Print all started
kubelocal get all --all-namespaces

# Logout like sudo
sudo -k

echo "👌  DONE"
