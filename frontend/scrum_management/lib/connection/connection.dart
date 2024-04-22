import 'package:scrum_management_lib/scrum_management.pbgrpc.dart';
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
