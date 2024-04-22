import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:scrum_management/providers/theme_provider.dart';

class ThemeSwitch extends StatefulWidget {
  final bool darkmode;
  const ThemeSwitch({Key? key, this.darkmode = false}) : super(key: key);

  @override
  _ThemeSwitchState createState() => _ThemeSwitchState();
}

class _ThemeSwitchState extends State<ThemeSwitch> {
  late bool darkmode;

  @override
  void initState() {
    super.initState();

    darkmode = widget.darkmode;
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      height: 30,
      width: 70,
      toggleSize: 25.0,
      duration: const Duration(milliseconds: 300),
      activeToggleColor: Provider.of<ThemeProvider>(context).accentColor,
      inactiveToggleColor: Provider.of<ThemeProvider>(context).primaryColor,
      activeColor: const Color.fromARGB(199, 199, 199, 199),
      inactiveColor: const Color.fromARGB(199, 199, 199, 199),
      activeIcon: const Icon(Icons.dark_mode),
      inactiveIcon: const Icon(Icons.light_mode),
      value: Provider.of<ThemeProvider>(context).isDarkMode,
      onToggle: (bool value) {
        setState(() {
          darkmode = value;
        });
        Provider.of<ThemeProvider>(context, listen: false).setMode(value);
      },
    );
  }
}
