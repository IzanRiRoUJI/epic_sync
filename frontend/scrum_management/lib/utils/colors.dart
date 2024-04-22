import 'package:flutter/material.dart';

const TextStyle listTitleDefaultTextStyle = TextStyle(
    color: Colors.white70, fontSize: 20.0, fontWeight: FontWeight.w600);
const TextStyle listTitleSelectedTextStyle =
    TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600);

class UtilColors {
  UtilColorsFactory _colorsTheme = _UtilColorsLightTheme();

  UtilColors(isDarkMode) {
    if (isDarkMode) {
      _colorsTheme = _UtilColorsDarkTheme();
    } else {
      _colorsTheme = _UtilColorsLightTheme();
    }
  }

  get primaryColor => _colorsTheme.primaryColor;
  get accentColor => _colorsTheme.accentColor;
  get backgroundColor => _colorsTheme.backgroundColor;
  get primarySwatch => _colorsTheme.primarySwatch;
  get textColor => _colorsTheme.textColor;
  get contrastTextColor => _colorsTheme.contrastTextColor;
  get cardBackgroundColor => _colorsTheme.cardBackgroundColor;
  get shadowColor => _colorsTheme.shadowColor;
  get dropdownColor => _colorsTheme.dropdownColor;
}

abstract class UtilColorsFactory {
  Color? _primaryColor;
  Color? _accentColor;
  Color? _backgroundColor;
  Color? _textColor;
  Color? _contrastTextColor;
  Color? _cardBackgroundColor;
  Color? _shadowColor;
  MaterialColor? _primarySwatch;
  Color? _dropdownColor;

  get primaryColor => _primaryColor;
  get accentColor => _accentColor;
  get backgroundColor => _backgroundColor;
  get primarySwatch => _primarySwatch;
  get textColor => _textColor;
  get contrastTextColor => _contrastTextColor;
  get cardBackgroundColor => _cardBackgroundColor;
  get shadowColor => _shadowColor;
  get dropdownColor => _dropdownColor;
}

class _UtilColorsLightTheme extends UtilColorsFactory {
  //paleta
  //247BA0
  //4f5d75
  //bfc0c0
  //ef8354
  //50514F

  @override
  final Color _primaryColor = const Color(0XFFef8354);

  @override
  final Color _accentColor = const Color(0XFF247BA0);

  @override
  final Color _backgroundColor = const Color(0xFFFFFFFF);

  @override
  final Color _textColor = const Color.fromARGB(255, 0, 0, 0);

  @override
  final Color _contrastTextColor = const Color.fromARGB(255, 255, 255, 255);

  @override
  final Color _cardBackgroundColor = const Color.fromARGB(255, 235, 235, 235);

  @override
  final Color _shadowColor = const Color.fromARGB(136, 174, 174, 187);

  @override
  final Color _dropdownColor = const Color.fromARGB(255, 48, 169, 221);

  @override
  MaterialColor? _primarySwatch;

  _UtilColorsLightTheme() {
    _primarySwatch = MaterialColor(_primaryColor.value, <int, Color>{
      50: _primaryColor.withOpacity(0.1),
      100: _primaryColor.withOpacity(0.2),
      200: _primaryColor.withOpacity(0.3),
      300: _primaryColor.withOpacity(0.4),
      400: _primaryColor.withOpacity(0.5),
      500: _primaryColor.withOpacity(0.6),
      600: _primaryColor.withOpacity(0.7),
      700: _primaryColor.withOpacity(0.8),
      800: _primaryColor.withOpacity(0.9),
      900: _primaryColor.withOpacity(1),
    });
  }
}

class _UtilColorsDarkTheme extends UtilColorsFactory {
  @override
  final Color _primaryColor =
      const Color(0xFFef8354); // Mantén este color para la temática principal

  @override
  final Color _accentColor = const Color(0xFF247BA0);

  @override
  final Color _backgroundColor = const Color(0xFF363636);

  @override
  final Color _textColor = const Color.fromARGB(255, 255, 255, 255);

  @override
  final Color _contrastTextColor = const Color.fromARGB(255, 0, 0, 0);

  @override
  final Color _cardBackgroundColor = const Color.fromARGB(255, 90, 90, 90);

  @override
  final Color _shadowColor = Colors.transparent;

  @override
  final Color _dropdownColor = const Color.fromARGB(255, 48, 169, 221);

  @override
  MaterialColor? _primarySwatch;

  _UtilColorsLightTheme() {
    _primarySwatch = MaterialColor(_primaryColor.value, <int, Color>{
      50: _primaryColor.withOpacity(0.1),
      100: _primaryColor.withOpacity(0.2),
      200: _primaryColor.withOpacity(0.3),
      300: _primaryColor.withOpacity(0.4),
      400: _primaryColor.withOpacity(0.5),
      500: _primaryColor.withOpacity(0.6),
      600: _primaryColor.withOpacity(0.7),
      700: _primaryColor.withOpacity(0.8),
      800: _primaryColor.withOpacity(0.9),
      900: _primaryColor.withOpacity(1),
    });
  }
}
