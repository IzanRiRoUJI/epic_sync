Aquí se va a añadir la documentación sobre los scripts que vamos a usar

# iniciar docker

sudo systemctl start docker

# crear docker con base

docker run \
--rm --name postgres \
-e POSTGRES_USER=postgres \
-e POSTGRES_PASSWORD=postgres \
-e POSTGRES_DB=postgres \
-p 5432:5432 \
-d postgres:latest

# tutorial

https://thedevelopercafe.com/articles/connect-to-postgres-in-go-golang-010d4aecb870

# entrar a la base

docker exec -it postgres psql -U postgres -d postgres

# hacer un comando sin entrar

docker exec postgres psql -U postgres -d postgres -c "\dt"

# ejecutar sql sin entrar

cat createtables.sql | docker exec -i postgres psql -U postgres -d postgres

cat data.sql | docker exec -i postgres psql -U postgres -d postgres

cat droptables.sql | docker exec -i postgres psql -U postgres -d postgres

# PRUEBAS DE BACKEND

grpcurl -plaintext -d '{}' 127.0.0.1:4545 Server/AddUser

grpcurl -plaintext -d '{}' 127.0.0.1:4560 Server/GetCards
grpcurl -plaintext -d '{"priority" : "Baja", "category":"0", "state":"0", "type":"0", "backlog":"False"}' 127.0.0.1:4545 Server/GetCards

grpcurl -plaintext -d '{ "card": { "id_user": 1, "title": "Configuración del servidor de base de datos", "epic": "Configuración de Infraestructura", "description": "Configurar el servidor de base de datos para optimizar el rendimiento del sistema", "type": "Tarea", "priority": "Media", "state": "Pendiente", "backlog": "True", "datecreated": "2024-04-04T00:00:00Z", "storypoints": 1.5, "category": "Proyectos" } }' 127.0.0.1:4545 Server/AddCard

grpcurl -plaintext -d '{"id_card":40}' 127.0.0.1:4545 Server/DeleteCard

grpcurl -plaintext -d '{ "card": { "id": 1, "id_user": 7, "title": "Configuración del servidor de base de datos", "epic": "Configuración de Infraestructura", "description": "Configurar el servidor de base de datos para optimizar el rendimiento del sistema", "type": "Tarea", "priority": "Media", "state": "Pendiente", "backlog": "True", "datecreated": "2024-05-04T00:00:00Z", "storypoints": 1.5, "category": "Proyectos" } }' 127.0.0.1:4545 Server/UpdateCard

grpcurl -plaintext -d '{"priority" : "Media", "category":"Proyectos", "state":"Pendiente", "type":"Tarea", "backlog":"True"}' 127.0.0.1:4545 Server/GetCards
