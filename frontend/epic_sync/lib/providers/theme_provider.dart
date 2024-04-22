import 'package:flutter/material.dart';
import 'package:epic_sync/utils/colors.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;
  UtilColors? colors;
  ThemeProvider() {
    colors = UtilColors(_isDarkMode);
  }

  get isDarkMode => _isDarkMode;

  void setMode(bool isDarkMode) {
    _isDarkMode = isDarkMode;
    colors = UtilColors(_isDarkMode);
    notifyListeners();
  }

  get primaryColor => colors?.primaryColor;
  get accentColor => colors?.accentColor;
  get backgroundColor => colors?.backgroundColor;
  get primarySwatch => colors?.primarySwatch;
  get textColor => colors?.textColor;
  get contrastTextColor => colors?.contrastTextColor;
  get cardBackgroundColor => colors?.cardBackgroundColor;
  get shadowColor => colors?.shadowColor;
  get dropdownColor => colors?.dropdownColor;
}
