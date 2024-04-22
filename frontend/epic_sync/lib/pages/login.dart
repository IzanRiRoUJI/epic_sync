import 'dart:math';

import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:epic_sync/providers/globals_provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:epic_sync/providers/user_provider.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController _emailController;
  bool _showConfirmationMessage = false;
  late FocusNode _emailFocusNode;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _emailFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<GlobalStateInfo>(
        builder: (context, stateInfo, _) {
          if (stateInfo.isLoggedIn) {
            if (_showConfirmationMessage) {
              return _buildConfirmationMessage();
            } else {
              return _buildAlreadyLoggedIn(context);
            }
          } else {
            return _buildLoginForm(context);
          }
        },
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: 400,
            child: Text(
              'Acceder a Scrum Manager',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: SizedBox(
              width: 400,
              height: 45,
              child: TextField(
                autofocus: true,
                controller: _emailController,
                focusNode: _emailFocusNode,
                decoration: InputDecoration(
                  isDense: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3),
                    borderSide: BorderSide(
                      color: themeProvider.primaryColor,
                    ),
                  ),
                  hintText: 'email@email.com',
                ),
                onSubmitted: (value) {
                  _submit(context);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: ElevatedButton(
              onPressed: () {
                _submit(context);
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(400, 30),
                primary: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              child: const Text(
                'Acceder',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '¿No tienes cuenta?',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _popup(context);
                  },
                  child: const Text(
                    'Regístrate',
                    style: TextStyle(
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildConfirmationMessage() {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      backgroundColor: themeProvider.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Compruebe su bandeja de entrada',
                style: TextStyle(
                  fontSize: 18,
                  color: themeProvider.textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                _emailController.text,
                style: TextStyle(
                  fontSize: 12,
                  color: themeProvider.textColor,
                ),
              ),
            ),
            Icon(
              Icons.mail,
              size: 45,
              color: themeProvider.primaryColor,
            ),
          ],
        ),
      ),
    );
  }

  void _popup(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Registrarse'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                ),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Correo',
                ),
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                String name = nameController.text;
                String email = emailController.text;

                int usuario = Provider.of<UserProvider>(context, listen: false)
                        .highestId() +
                    1;
                String token = generateRandomToken();
                epic_sync.User newUser = epic_sync.User(
                  id: Int64(usuario),
                  name: name,
                  email: email,
                  token: token,
                  isAdmin: false,
                );
                Provider.of<UserProvider>(context, listen: false)
                    .addUser(newUser);
                Navigator.of(context).pop();
              },
              child: const Text('Registrar'),
            ),
          ],
        );
      },
    );
  }

  // void _submit3(BuildContext context) {
  //   String email = _emailController.text;
  //   if (!_isValidEmail(email)) {
  //     _advice(context, 'Email no válido');
  //     _emailFocusNode.requestFocus();
  //   } else {
  //     setState(() {
  //       _showConfirmationMessage = true;
  //     });
  //     GlobalStateInfo globalStateInfo =
  //         Provider.of<GlobalStateInfo>(context, listen: false);
  //     globalStateInfo.setLoggedIn(true);
  //     final previousRoute = globalStateInfo.savedRoute;
  //     if (previousRoute != null) {
  //       Navigator.pushReplacementNamed(context, previousRoute);
  //     } else {
  //       Navigator.pushReplacementNamed(context, '/dashboard');
  //     }
  //   }
  // }

  void _submit(BuildContext context) {
    String email = _emailController.text;
    if (!_isValidEmail(email)) {
      _advice(context, 'Email no válido');
      _emailFocusNode.requestFocus();
    } else if (!_isRegistered(email)) {
      _advice(context, 'Email no registrado');
      _emailFocusNode.requestFocus();
    } else {
      setState(() {
        _showConfirmationMessage = true;
      });
      GlobalStateInfo globalStateInfo =
          Provider.of<GlobalStateInfo>(context, listen: false);
      globalStateInfo.setLoggedIn(true);
      final previousRoute = globalStateInfo.savedRoute;
      if (previousRoute != null) {
        Navigator.pushReplacementNamed(context, previousRoute);
      } else {
        Navigator.pushReplacementNamed(context, '/dashboard');
      }
    }
  }

  Widget _buildAlreadyLoggedIn(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              '¡Ya estás loggeado!',
              style: TextStyle(
                fontSize: 16,
                color: themeProvider.textColor,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              primary: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            child: const Text(
              'Volver',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  void _advice(BuildContext context, String message) {
    ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: themeProvider.accentColor,
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  bool _isRegistered(String email) {
    UserProvider userProvider =
        Provider.of<UserProvider>(context, listen: false);

    for (epic_sync.User user in userProvider.users!) {
      if (user.email == email) {
        Provider.of<GlobalStateInfo>(context, listen: false).setUserId(user.id);
        return true;
      }
    }
    return false;
  }

  String generateRandomToken() {
    const String alphabet = 'abcdefghijklmnopqrstuvwxyz0123456789';
    final Random random = Random();
    String token = '';

    for (int i = 0; i < 20; i++) {
      token += alphabet[random.nextInt(alphabet.length)];
    }

    return token;
  }
}
