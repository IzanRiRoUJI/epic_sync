//import 'package:epic_sync/asyn_notifier.dart';
import 'package:epic_sync/api.dart';
import 'package:epic_sync_lib/epic_sync.pbgrpc.dart' as epic_sync;

class AuthProvider {
  AuthProvider();

  Future<void> addUser() async {
    print("IN ADD USER");

    try {
      final result = await Api.get()
          .auth
          .addUser(epic_sync.addUserRequest(email: "pruebas"));
      print('Got ADD USER result: $result');
    } catch (e) {
      print("ADD USER ERROR: $e");
      // return e;
    }
  }
}
