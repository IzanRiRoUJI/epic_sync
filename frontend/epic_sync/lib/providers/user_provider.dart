import 'package:flutter/material.dart';
import 'package:fixnum/fixnum.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class UserProvider with ChangeNotifier {
  List<epic_sync.User>? _users;

  UserProvider() {
    _users = [
      epic_sync.User(
          id: Int64(1),
          name: 'Pepe',
          email: 'pepito@gmail.com',
          token: 'awdad21083hsbjwdadwag',
          isAdmin: false),
      epic_sync.User(
          id: Int64(2),
          name: 'Juan',
          email: 'prueba@prueba.com',
          token: 'bwdad21083hsbjwdadwag',
          isAdmin: false),
      epic_sync.User(
          id: Int64(3),
          name: 'Maria',
          email: 'test@test.es',
          token: 'cwdad21083hsbjwdadwag',
          isAdmin: false),
      epic_sync.User(
          id: Int64(4),
          name: 'Ana',
          email: 'wdadwa@test.com',
          token: 'dwdad21083hsbjwdadwag',
          isAdmin: false),
      epic_sync.User(
          id: Int64(5),
          name: 'Pedro',
          email: 'pedrito@gmail.com',
          token: 'ewdad21083hsbjwdadwag',
          isAdmin: false),
      epic_sync.User(
          id: Int64(5),
          name: 'Admin',
          email: 'admin@admin.com',
          token: 'fwdad21083hsbjwdadwag',
          isAdmin: true),
    ];
  }

  List<epic_sync.User>? get users => _users;

  String? getUserName(String? id) {
    String? name;
    for (var element in _users!) {
      if (element.id.toString() == id.toString()) {
        name = element.name;
      }
    }
    return name;
  }

  Image? getUserImage(epic_sync.User user) {
    if (user.name == 'Pepe') {
      return Image.asset('pepe.png');
    } else if (user.name == 'Juan') {
      return Image.asset('juan.png');
    } else if (user.name == 'Maria') {
      return Image.asset('maria.png');
    } else if (user.name == 'Ana') {
      return Image.asset('ana.png');
    } else if (user.name == 'Pedro') {
      return Image.asset('pedro.png');
    }
    return Image.asset('error.png');
  }

  int highestId() {
    int highest = 0;
    for (var element in _users!) {
      if (element.id.toInt() > highest) {
        highest = element.id.toInt();
      }
    }
    return highest;
  }

  List<epic_sync.User> get5NamesWithMoreCards(Map<Int64, int> taskCountByUser) {
    var sortedUsers = taskCountByUser.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));
    List<epic_sync.User> top5Users = [];
    for (int i = 0; i < 5 && i < sortedUsers.length; i++) {
      epic_sync.User user =
          _users!.firstWhere((element) => element.id == sortedUsers[i].key);
      if (!top5Users.contains(user)) {
        top5Users.add(user);
      }
    }
    return top5Users;
  }

  void addUser(epic_sync.User user) {
    _users!.add(user);
    notifyListeners();
  }

  void deleteUser(epic_sync.User user) {
    _users!.remove(user);
    notifyListeners();
  }

  void updateUser(epic_sync.User user) {
    _users!.removeWhere((element) => element.id == user.id);
    _users!.add(user);
    notifyListeners();
  }

  void validateToken(epic_sync.User user) {
    _users!.removeWhere((element) => element.id == user.id);
    _users!.add(user);
    notifyListeners();
  }

  void invalidateToken(epic_sync.User user) {
    _users!.removeWhere((element) => element.id == user.id);
    _users!.add(user);
    notifyListeners();
  }
}
