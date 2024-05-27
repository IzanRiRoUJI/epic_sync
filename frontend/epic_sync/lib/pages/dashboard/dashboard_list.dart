import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:epic_sync/providers/card_provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:epic_sync/providers/user_provider.dart';
import 'package:epic_sync/pages/dashboard/stats_pie.dart';
import 'package:epic_sync/pages/dashboard/stats_table.dart';
import 'package:epic_sync_lib/epic_sync.pb.dart' as epic_sync;

class DashboardStats extends StatelessWidget {
  final String dashboardName;
  final bool big;

  const DashboardStats({
    Key? key,
    required this.dashboardName,
    required this.big,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dashboardNameShort = dashboardName.split(' ').last;
    CardProvider cardProvider = Provider.of<CardProvider>(context);
    UserProvider userProvider = Provider.of<UserProvider>(context);

    List<epic_sync.User> users = [];
    Map<Int64, int> usersMap = {};
    if (dashboardNameShort == 'Proyectos') {
      usersMap = cardProvider
          .getCardsByUserWithCategory(epic_sync.CardCategory.Proyectos);
      users = userProvider.get5NamesWithMoreCards(usersMap);
    }
    if (dashboardNameShort == 'Roadmap') {
      usersMap = cardProvider
          .getCardsByUserWithCategory(epic_sync.CardCategory.Roadmap);
      users = userProvider.get5NamesWithMoreCards(usersMap);
    }
    if (dashboardNameShort == 'General') {
      usersMap = cardProvider.getCardsByUser();
      users = userProvider.get5NamesWithMoreCards(usersMap);
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        constraints = BoxConstraints(
          minHeight: MediaQuery.of(context).size.height,
        );
        return Container(
          constraints: constraints,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: ButtonTitle(title: dashboardName),
              ),
              StatsPie(
                dashboardName: dashboardNameShort,
              ),
              const SizedBox(height: 20),
              if (!big)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    color: Provider.of<ThemeProvider>(context).primaryColor,
                    width: double.infinity,
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Personas asignadas',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              if (big)
                Padding(
                  padding: EdgeInsets.only(
                    left: dashboardNameShort == 'Proyectos' ? 15 : 0,
                    right: dashboardNameShort == 'Roadmap' ? 15 : 0,
                  ),
                  child: Container(
                    color: Provider.of<ThemeProvider>(context).primaryColor,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        dashboardNameShort == 'General'
                            ? 'Personas asignadas'
                            : '',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              SizedBox(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                    users.length > 5 ? 5 : users.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(5),
                      child: Tooltip(
                        message: users[index].name,
                        child: ClipOval(
                            child: Provider.of<UserProvider>(context)
                                .getUserImage(users[index])!),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              if (!big)
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    color: Provider.of<ThemeProvider>(context).primaryColor,
                    width: double.infinity,
                    child: const Text(
                      'Estadísticas',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              if (big)
                Padding(
                  padding: EdgeInsets.only(
                    left: dashboardNameShort == 'Proyectos' ? 15 : 0,
                    right: dashboardNameShort == 'Roadmap' ? 15 : 0,
                  ),
                  child: Container(
                    color: Provider.of<ThemeProvider>(context).primaryColor,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        dashboardNameShort == 'General' ? 'Estadísticas' : '',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: StatsTable(
                    dashboardName: dashboardNameShort,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonTitle extends StatelessWidget {
  final String title;

  const ButtonTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(
          context,
          '/${title.split(' ').last.toLowerCase()}/pizarra',
        );
      },
      style: ElevatedButton.styleFrom(
        padding:
            const EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
        primary: Provider.of<ThemeProvider>(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
