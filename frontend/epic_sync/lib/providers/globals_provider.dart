import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';

class GlobalStateInfo with ChangeNotifier {
  bool _isCollapsed = true;
  bool _isLoggedIn = true;
  Int64? _userIdLogged;
  double leftPadding = 60.0;
  String? _savedRoute;

  bool get isCollapsed => _isCollapsed;
  bool get isLoggedIn => _isLoggedIn;
  Int64? get userIdLogged => _userIdLogged;
  double get getLeftPadding => leftPadding;
  String? get savedRoute => _savedRoute;

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

  void setUserId(Int64 userId) {
    _userIdLogged = userId;
  }
}
