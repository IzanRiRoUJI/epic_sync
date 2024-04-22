import 'package:flutter/material.dart';
import 'package:scrum_management/pages/kanban/w_medium_card_list.dart';
import 'package:scrum_management/providers/globals_provider.dart';
import 'package:scrum_management/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:scrum_management/drawer/drawer.dart';
import 'package:scrum_management_lib/scrum_management.pb.dart'
    as scrum_management;

class GeneralKanbanBoard extends StatelessWidget {
  const GeneralKanbanBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Provider.of<ThemeProvider>(context).backgroundColor,
      body: Stack(
        children: [
          LayoutBuilder(builder: (context, constraints) {
            return Container(
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                  left: Provider.of<GlobalStateInfo>(context).getLeftPadding),
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Kanban General',
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.w600,
                          color: Provider.of<ThemeProvider>(context).textColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const MediumCardList(
                              state: scrum_management.CardState.Pendiente,
                              s: 'G'),
                          VerticalDivider(
                            color: Provider.of<ThemeProvider>(context)
                                .accentColor,
                            thickness: 1,
                            width: 0,
                            indent: MediaQuery.of(context).size.height * 0.1,
                            endIndent: MediaQuery.of(context).size.height * 0.1,
                          ),
                          const MediumCardList(
                              state: scrum_management.CardState.Proceso,
                              s: 'G'),
                          VerticalDivider(
                            color: Provider.of<ThemeProvider>(context)
                                .accentColor,
                            thickness: 1,
                            width: 0,
                            indent: MediaQuery.of(context).size.height * 0.1,
                            endIndent: MediaQuery.of(context).size.height * 0.1,
                          ),
                          const MediumCardList(
                              state: scrum_management.CardState.Revisar,
                              s: 'G'),
                          VerticalDivider(
                            color: Provider.of<ThemeProvider>(context)
                                .accentColor,
                            thickness: 1,
                            width: 0,
                            indent: MediaQuery.of(context).size.height * 0.1,
                            endIndent: MediaQuery.of(context).size.height * 0.1,
                          ),
                          const MediumCardList(
                              state: scrum_management.CardState.Listo, s: 'G'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
          Positioned(
            bottom: 30,
            right: 30,
            child: FloatingActionButton.extended(
              heroTag: 'CrearTarjeta',
              backgroundColor: ThemeProvider().primaryColor,
              label: const Text('Crear tarjeta'),
              onPressed: () {
                Navigator.pushNamed(context, '/crearTarjeta');
              },
              icon: const Icon(Icons.add),
            ),
          ),
          const CollapsingNavigationDrawer(),
        ],
      ),
    );
  }
}