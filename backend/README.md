### Levantar pod

# comprobar estado docker

sudo systemctl status docker

# iniciar docker

sudo systemctl start docker

# levantar el pod

./izan.sh void

# hacer deploy con lo nuevo

./izan.sh services

# desde carpeta backend

nayardeploy --c config/services_local.conf.yaml --minikube=true services

# ver los pods activos

kubelocal get pods

# ver los logs de un pod

kubelocal logs -f services-d4f8d8f54-cnjwh

# eliminar solo el pod (reiniciar la imagen?) (se vuelve a crear por el tiller)

kubelocal delete pod services-d4f8d8f54-cnjwh

# entrar en la base (cambiar pod cada vez)

kubelocal exec -n default -it postgres-deployment-f794d8bcc-29fts -- psql -U postgres -d test
