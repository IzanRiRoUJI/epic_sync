import 'package:epic_sync_lib/epic_sync.pbgrpc.dart';
import 'package:grpc/grpc_web.dart';

class Connection {
  late ServerClient auth;
  late GrpcWebClientChannel channel;

  Connection() {
    channel = GrpcWebClientChannel.xhr(Uri.parse('http://localhost:8080'));
    auth = ServerClient(channel,
        options:
            CallOptions(metadata: {}, timeout: const Duration(seconds: 30)));
  }
}
