//import 'package:scrum_management/asyn_notifier.dart';
import 'package:scrum_management/api.dart';
import 'package:scrum_management_lib/scrum_management.pbgrpc.dart'
    as scrum_management;

class AuthProvider {
  AuthProvider();

  Future<void> addUser() async {
    print("IN ADD USER");

    try {
      final result = await Api.get()
          .auth
          .addUser(scrum_management.addUserRequest(email: "pruebas"));
      print('Got ADD USER result: $result');
    } catch (e) {
      print("ADD USER ERROR: $e");
      // return e;
    }
  }
}
