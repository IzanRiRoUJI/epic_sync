import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrum_management/providers/globals_provider.dart';

class AuthChecker extends StatelessWidget {
  final Widget child;

  const AuthChecker({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<GlobalStateInfo>(
      builder: (context, stateInfo, child) {
        if (!stateInfo.isLoggedIn) {
          final currentRoute = ModalRoute.of(context)?.settings.name;
          Provider.of<GlobalStateInfo>(context, listen: false)
              .saveCurrentRoute(currentRoute);
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.pushReplacementNamed(context, '/login');
          });
        }
        return child!;
      },
      child: child,
    );
  }
}
