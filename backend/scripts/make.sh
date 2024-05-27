# Aqui se ejecutará el comando de autogenerar el protobuf
cd ..

rm -rf ../frontend/epic_sync_lib/lib/epic_sync.pb.dart
rm -rf ../frontend/epic_sync_lib/lib/epic_sync.pbenum.dart
rm -rf ../frontend/epic_sync_lib/lib/epic_sync.pbgrpc.dart
rm -rf ../frontend/epic_sync_lib/lib/epic_sync.pbjson.dart

#borrar de la carpeta epic_sync/epic_sync.v1 los archivos go, md y json

rm -rf epic_sync/epic_sync.v1/epic_sync.pb.go
rm -rf epic_sync/epic_sync.v1/epic_sync.pb.gw.go
rm -rf epic_sync/epic_sync.swagger.json
rm -rf epic_sync/epic_sync_grpc_api.md

dart pub global deactivate protoc_plugin

dart pub global activate protoc_plugin

protoc -I epic_sync -I C:/Users/izanr/go/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis --go_out=plugins=grpc:epic_sync epic_sync/epic_sync.proto

protoc -I epic_sync -I C:/Users/izanr/go/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis --dart_out=grpc:../frontend/epic_sync_lib/lib epic_sync/epic_sync.proto

protoc -I epic_sync/ -I C:/Users/izanr/go/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis --grpc-gateway_out=logtostderr=true:epic_sync epic_sync/epic_sync.proto

protoc -I epic_sync/ -I C:/Users/izanr/go/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis --swagger_out=logtostderr=true:epic_sync epic_sync/epic_sync.proto

protoc -I epic_sync/ -I C:/Users/izanr/go/pkg/mod/github.com/grpc-ecosystem/grpc-gateway@v1.16.0/third_party/googleapis --doc_out=./epic_sync --doc_opt=markdown,epic_sync_grpc_api.md epic_sync/epic_sync.proto
