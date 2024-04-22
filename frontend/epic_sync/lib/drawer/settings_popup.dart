import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'switch.dart';

// ignore: camel_case_types
class Settings_popup extends StatelessWidget {
  const Settings_popup({
    Key? key,
    required this.lastIndex,
  }) : super(key: key);

  final int lastIndex;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      elevation: 500,
      backgroundColor: Provider.of<ThemeProvider>(context).backgroundColor,
      content: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            color: Provider.of<ThemeProvider>(context).backgroundColor,
            width: 220,
            height: 200,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Configuración',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Provider.of<ThemeProvider>(context).textColor),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text('Idioma',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color:
                                Provider.of<ThemeProvider>(context).textColor)),
                    const Spacer(),
                    Container(
                      child: Text('Español',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              color: Provider.of<ThemeProvider>(context)
                                  .textColor)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Text('Tema',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color:
                                Provider.of<ThemeProvider>(context).textColor)),
                    const Spacer(),
                    const ThemeSwitch(),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cerrar'),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
