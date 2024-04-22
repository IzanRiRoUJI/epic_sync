import 'package:flutter/material.dart';
import 'package:scrum_management/drawer/drawer.dart';
import 'package:provider/provider.dart';
import 'package:scrum_management/pages/management/small_card_list.dart';
import 'package:scrum_management/providers/globals_provider.dart';

import 'package:scrum_management/providers/theme_provider.dart';

class ManagementBoard extends StatelessWidget {
  const ManagementBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController scrollController = ScrollController();
    return Scaffold(
      body: Stack(
        children: [
          Scrollbar(
            controller: scrollController,
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth > 600) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    alignment: Alignment.topCenter,
                    width: MediaQuery.of(context).size.width,
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height,
                    ),
                    padding: EdgeInsets.only(
                      left: 20 +
                          Provider.of<GlobalStateInfo>(context).getLeftPadding,
                      right: 20,
                      top: 20,
                      bottom: 20,
                    ),
                    color: Provider.of<ThemeProvider>(context).backgroundColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Gestión de proyectos',
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.w600,
                            color:
                                Provider.of<ThemeProvider>(context).textColor,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const SmallCardList(
                          category: 'En Roadmap',
                          s: 'G',
                        ),
                        const SizedBox(height: 10),
                        const SmallCardList(
                          category: 'En Backlog',
                          s: 'G',
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Container(
                  padding: EdgeInsets.only(
                      left:
                          Provider.of<GlobalStateInfo>(context).getLeftPadding +
                              5,
                      right: 5),
                  color: Provider.of<ThemeProvider>(context).backgroundColor,
                  alignment: Alignment.center,
                  child: const Text(
                      'Amplia la pagina para poder ver el contenido'),
                );
              }
            }),
          ),
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
