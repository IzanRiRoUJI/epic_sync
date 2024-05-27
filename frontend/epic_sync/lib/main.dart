import 'package:epic_sync/pages/management/proyect_management_board%20copy%202.dart';
import 'package:epic_sync/pages/management/roadmap_management_board%20copy.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:epic_sync/auth.dart';
import 'package:epic_sync/pages/create_edit_card/create_card.dart';
import 'package:epic_sync/pages/dashboard/dashboard_board.dart';
import 'package:epic_sync/pages/kanban/general_kanban_board.dart';
import 'package:epic_sync/pages/kanban/project_kanban_board.dart';
import 'package:epic_sync/pages/kanban/roadmap_kanban_board.dart';
import 'package:epic_sync/pages/login.dart';
import 'package:epic_sync/pages/management/general_management_board.dart';
import 'package:epic_sync/pages/stats/stats_board.dart';
import 'package:epic_sync/providers/auth_provider.dart';
import 'package:epic_sync/providers/card_provider.dart';
import 'package:epic_sync/providers/comments_provider.dart';
import 'package:epic_sync/providers/globals_provider.dart';
import 'package:epic_sync/providers/label_provider.dart';
import 'package:epic_sync/providers/user_provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => CardProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LabelProvider()),
        ChangeNotifierProvider(create: (_) => GlobalStateInfo()),
        ChangeNotifierProvider(create: (_) => CommentProvider()),
      ],
      child: const ScrumManagementApp(),
    ),
  );
}

class ScrumManagementApp extends StatelessWidget {
  const ScrumManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EpicSync',
      theme: _buildThemeData(context),
      initialRoute: '/dashboard',
      routes: _buildRoutes(),
    );
  }

  ThemeData _buildThemeData(BuildContext context) {
    final colors = Provider.of<ThemeProvider>(context);
    return ThemeData(
      primaryColor: colors.primaryColor,
      backgroundColor: colors.backgroundColor,
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: colors.accentColor),
    );
  }

  Map<String, WidgetBuilder> _buildRoutes() {
    return {
      '/': (context) => _authChecker(const Dashboard()),
      '/login': (context) => const Login(),
      '/dashboard': (context) => _authChecker(const Dashboard()),
      '/proyectos/pizarra': (context) =>
          _authChecker(const ProyectsKanbanBoard()),
      '/proyectos/gestion': (context) =>
          _authChecker(const ProyectsManagementBoard()),
      '/proyectos/estadisticas': (context) => _authChecker(const StatsBoard()),
      '/general/pizarra': (context) => _authChecker(const GeneralKanbanBoard()),
      '/general/gestion': (context) =>
          _authChecker(const GeneralManagementBoard()),
      '/general/estadisticas': (context) => _authChecker(const StatsBoard()),
      '/roadmap/pizarra': (context) => _authChecker(const RoadmapKanbanBoard()),
      '/roadmap/gestion': (context) =>
          _authChecker(const RoadmapManagementBoard()),
      '/roadmap/estadisticas': (context) => _authChecker(const StatsBoard()),
      '/crearTarjeta': (context) => _authChecker(CreateCard()),
    };
  }

  Widget _authChecker(Widget child) {
    return AuthChecker(child: child);
  }
}
