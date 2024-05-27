import 'package:flutter/material.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class GlobalStateInfo with ChangeNotifier {
  bool _isCollapsed = true;
  bool _isLoggedIn = true;
  epic_sync.User? _userLogged = epic_sync.User();
  double leftPadding = 60.0;
  String? _savedRoute;

  bool get isCollapsed => _isCollapsed;
  bool get isLoggedIn => _isLoggedIn;
  double get getLeftPadding => leftPadding;
  String? get savedRoute => _savedRoute;
  epic_sync.User? get userLogged => _userLogged;

  void toggleDrawer() {
    _isCollapsed = !_isCollapsed;
    notifyListeners();
  }

  void setLoggedIn(bool loggedIn) {
    _isLoggedIn = loggedIn;
    notifyListeners();
  }

  void saveCurrentRoute(String? route) {
    _savedRoute = route;
  }

  void setUserLogged(epic_sync.User user) {
    _userLogged = user;
  }
}
