import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:epic_sync/providers/globals_provider.dart';
import 'package:epic_sync/providers/theme_provider.dart';
import 'package:epic_sync/drawer/drawer.dart';
import 'package:epic_sync/pages/dashboard/dashboard_list.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    ScrollController scrollcontroller = ScrollController();
    int totalPages = 3;
    // Provider.of<AuthProvider>(context).addUser();
    return Scaffold(
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      left:
                          Provider.of<GlobalStateInfo>(context).getLeftPadding),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Provider.of<ThemeProvider>(context).backgroundColor,
                  child: Center(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        if (MediaQuery.of(context).size.width > 1200 &&
                            MediaQuery.of(context).size.height > 400) {
                          return Column(
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  controller: scrollcontroller,
                                  child: Row(
                                    children: const [
                                      Expanded(
                                        child: DashboardStats(
                                          dashboardName: 'Pizarra de Proyectos',
                                          big: true,
                                        ),
                                      ),
                                      Expanded(
                                        child: DashboardStats(
                                          dashboardName: 'Pizarra General',
                                          big: true,
                                        ),
                                      ),
                                      Expanded(
                                        child: DashboardStats(
                                          dashboardName: 'Pizarra de Roadmap',
                                          big: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          );
                        }
                        if (MediaQuery.of(context).size.width < 485 ||
                            MediaQuery.of(context).size.height < 400) {
                          return Container(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            color: Provider.of<ThemeProvider>(context)
                                .backgroundColor,
                            alignment: Alignment.center,
                            child: const Text(
                                'Amplia la página para poder ver el contenido'),
                          );
                        } else {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text(
                                  'Dashboard General',
                                  style: TextStyle(
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold,
                                    color: Provider.of<ThemeProvider>(context)
                                        .textColor,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: PageView(
                                  controller: pageController,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    SingleChildScrollView(
                                      controller: scrollcontroller,
                                      child: const DashboardStats(
                                        dashboardName: 'Pizarra de Proyectos',
                                        big: false,
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      controller: scrollcontroller,
                                      child: const DashboardStats(
                                          dashboardName: 'Pizarra General',
                                          big: false),
                                    ),
                                    SingleChildScrollView(
                                      controller: scrollcontroller,
                                      child: const DashboardStats(
                                          dashboardName: 'Pizarra de Roadmap',
                                          big: false),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        }
                      },
                    ),
                  ),
                ),
                if (MediaQuery.of(context).size.width <= 1200 &&
                    MediaQuery.of(context).size.width >= 485 &&
                    MediaQuery.of(context).size.height >= 400)
                  _buildFloatingButtons(pageController, totalPages, context),
                const CollapsingNavigationDrawer(),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildFloatingButtons(
      PageController pageController, int totalPages, BuildContext context) {
    return Positioned(
      bottom: 20,
      child: Container(
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.only(
              left: Provider.of<GlobalStateInfo>(context).getLeftPadding + 30,
              right: 30),
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    final double currentPage = pageController.page ?? 0.0;
                    if (currentPage == 0) {
                      pageController.animateToPage(totalPages - 1,
                          curve: Curves.fastOutSlowIn,
                          duration: const Duration(milliseconds: 500));
                    } else {
                      pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      );
                    }
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                FloatingActionButton(
                  onPressed: () {
                    final double currentPage = pageController.page ?? 0.0;
                    if (currentPage >= totalPages - 1) {
                      pageController.animateToPage(0,
                          curve: Curves.fastOutSlowIn,
                          duration: const Duration(milliseconds: 500));
                    } else {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.fastOutSlowIn,
                      );
                    }
                  },
                  child: const Icon(Icons.arrow_forward),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
