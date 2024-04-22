# Aqui se ejecutará el comando de autogenerar el protobuf
cd ..

rm -rf ../frontend/scrum_management_lib/lib/scrum_management.pb.dart
rm -rf ../frontend/scrum_management_lib/lib/scrum_management.pbenum.dart
rm -rf ../frontend/scrum_management_lib/lib/scrum_management.pbgrpc.dart
rm -rf ../frontend/scrum_management_lib/lib/scrum_management.pbjson.dart

#borrar de la carpeta scrum_management/scrum_management.v1 los archivos go, md y json

rm -rf scrum_management/scrum_management.v1/scrum_management.pb.go
rm -rf scrum_management/scrum_management.v1/scrum_management.pb.gw.go
rm -rf scrum_management/scrum_management.swagger.json
rm -rf scrum_management/scrum_management_grpc_api.md


dart pub global activate protoc_plugin

protoc -I scrum_management -I /home/izan/go/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis --go_out=plugins=grpc:scrum_management scrum_management/scrum_management.proto

protoc -I scrum_management -I /home/izan/go/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis --dart_out=grpc:../frontend/scrum_management_lib/lib scrum_management/scrum_management.proto

protoc -I scrum_management/ -I /home/izan/go/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis --grpc-gateway_out=logtostderr=true:scrum_management scrum_management/scrum_management.proto

protoc -I scrum_management/ -I /home/izan/go/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis --swagger_out=logtostderr=true:scrum_management scrum_management/scrum_management.proto

protoc -I scrum_management/ -I /home/izan/go/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis --doc_out=./scrum_management --doc_opt=markdown,scrum_management_grpc_api.md scrum_management/scrum_management.proto

mv services/server/* scrum_management/scrum_management.v1
rm -rf services/server