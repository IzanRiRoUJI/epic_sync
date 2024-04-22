import 'package:flutter/material.dart';
import 'package:scrum_management/providers/theme_provider.dart';
import 'package:scrum_management/providers/globals_provider.dart';
import 'package:provider/provider.dart';
import 'package:scrum_management/drawer/settings_popup.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  const CollapsingNavigationDrawer({Key? key}) : super(key: key);

  @override
  CollapsingNavigationDrawerState createState() =>
      CollapsingNavigationDrawerState();
}

class CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  late double maxWidth;
  late double minWidth;
  late AnimationController _animationController;
  late Animation<double> widthAnimation;
  Map<String, bool> subMenuOpenStatus = {};

  @override
  void initState() {
    super.initState();
    maxWidth = 210;
    minWidth = 60;
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(_animationController);

    subMenuOpenStatus = {for (var item in navigationItems) item.title: false};

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final globalsStateInfo =
          Provider.of<GlobalStateInfo>(context, listen: false);
      if (globalsStateInfo.isCollapsed) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final globalsStateInfo = Provider.of<GlobalStateInfo>(context);
    final epicItem = NavigationItem(title: "App", icon: Icons.apps);
    final bool isLargeScreen = MediaQuery.of(context).size.height >= 300;
    return isLargeScreen
        ? Row(
            children: [
              AnimatedBuilder(
                animation: _animationController,
                builder: (context, widget) => Container(
                  width: widthAnimation.value,
                  color: Provider.of<ThemeProvider>(context).primaryColor,
                  child: Column(
                    children: [
                      const SizedBox(height: 50.0),
                      _buildTopItem(epicItem),
                      const SizedBox(height: 50.0),
                      const Divider(color: Colors.white70, height: 1.0),
                      const SizedBox(height: 10.0),
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 5),
                          itemCount: navigationItems.length,
                          itemBuilder: (context, index) {
                            final item = navigationItems[index];
                            return _buildItem(
                                item, globalsStateInfo.isCollapsed);
                          },
                        ),
                      ),
                      InkWell(
                        onTap: toggleDrawer,
                        child: AnimatedIcon(
                          icon: AnimatedIcons.menu_arrow,
                          progress: ReverseAnimation(_animationController),
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 50.0),
                    ],
                  ),
                ),
              ),
              if (!globalsStateInfo.isCollapsed)
                Expanded(
                  child: GestureDetector(
                    onTap: () => toggleDrawer(),
                  ),
                )
            ],
          )
        : const SizedBox();
  }

  Widget _buildTopItem(NavigationItem epicItem) {
    final globalsStateInfo = Provider.of<GlobalStateInfo>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () => globalsStateInfo.isCollapsed
              ? toggleDrawer()
              : _onTapItem(epicItem),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  epicItem.icon,
                  color: Colors.white,
                  size: 38,
                ),
                if (widthAnimation.value >= maxWidth)
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(epicItem.title,
                        style: const TextStyle(color: Colors.white)),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildItem(NavigationItem item, bool isCollapsed) {
    final hasSubItems = item.subItems != null && item.subItems!.isNotEmpty;
    return Column(
      children: [
        ListTile(
          leading: Icon(item.icon, color: Colors.white),
          title: widthAnimation.value >= maxWidth
              ? Text(item.title, style: const TextStyle(color: Colors.white))
              : null,
          onTap: () => {
            isCollapsed ? toggleDrawer() : _onTapItem(item),
          },
          trailing: hasSubItems
              ? widthAnimation.value >= maxWidth
                  ? Icon(
                      subMenuOpenStatus[item.title] ?? false
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down,
                      color: Colors.white)
                  : null
              : null,
        ),
        AnimatedSize(
          key: ValueKey('${item.title}_expansion'),
          duration: const Duration(milliseconds: 150),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight:
                  subMenuOpenStatus[item.title] ?? false ? double.infinity : 0,
            ),
            child: Column(
              children: item.subItems
                      ?.map((subItem) =>
                          _buildSubItem(subItem, item, isCollapsed))
                      .toList() ??
                  [],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSubItem(
      NavigationItem subItem, NavigationItem parentItem, bool isCollapsed) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ListTile(
        leading: widthAnimation.value >= maxWidth && subItem.subItems == null
            ? SizedBox(
                width: 24.0,
                child: Icon(subItem.icon, color: Colors.white70),
              )
            : null,
        title: widthAnimation.value >= maxWidth
            ? Text(subItem.title, style: const TextStyle(color: Colors.white70))
            : null,
        onTap: () {
          toggleDrawer();
          if (subItem.title == 'Pizarra') {
            if (ModalRoute.of(context)!.settings.name !=
                '/${parentItem.title.toLowerCase()}/pizarra') {
              Navigator.of(context)
                  .pushNamed('/${parentItem.title.toLowerCase()}/pizarra');
            }
          }
          if (subItem.title == 'Pizarra') {
            if (ModalRoute.of(context)!.settings.name !=
                '/${parentItem.title.toLowerCase()}/pizarra') {
              Navigator.of(context)
                  .pushNamed('/${parentItem.title.toLowerCase()}/pizarra');
            }
          }
          if (subItem.title == 'Gestión') {
            if (ModalRoute.of(context)!.settings.name !=
                '/${parentItem.title.toLowerCase()}/gestion') {
              Navigator.of(context)
                  .pushNamed('/${parentItem.title.toLowerCase()}/gestion');
            }
          }
          if (subItem.title == 'Estadísticas') {
            if (ModalRoute.of(context)!.settings.name !=
                '/${parentItem.title.toLowerCase()}/estadisticas') {
              Navigator.of(context)
                  .pushNamed('/${parentItem.title.toLowerCase()}/estadisticas');
            }
          }
        },
      ),
    );
  }

  void toggleDrawer() {
    final globalsStateInfo =
        Provider.of<GlobalStateInfo>(context, listen: false);
    globalsStateInfo.toggleDrawer();
    if (globalsStateInfo.isCollapsed) {
      _animationController.forward();
      closeAllSubMenus();
    } else {
      _animationController.reverse();
    }
  }

  void _onTapItem(NavigationItem item) {
    if (item.subItems != null && item.subItems!.isNotEmpty) {
      setState(() {
        subMenuOpenStatus[item.title] =
            !(subMenuOpenStatus[item.title] ?? false);
        subMenuOpenStatus.forEach((key, value) {
          if (key != item.title) subMenuOpenStatus[key] = false;
        });
      });
    } else {
      switch (item.title) {
        case "Dashboard":
          toggleDrawer();
          if (ModalRoute.of(context)!.settings.name != '/dashboard') {
            Navigator.of(context).pushNamed('/dashboard');
          }
          break;
        // case "Login":
        //   Navigator.of(context).pushNamed('/login');
        //   break;
        case "Ajustes":
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return const Settings_popup(lastIndex: 1);
            },
          );
          break;
        default:
          break;
      }
    }
  }

  void closeAllSubMenus() {
    setState(() {
      subMenuOpenStatus = {
        for (var item in subMenuOpenStatus.keys) item: false
      };
    });
  }
}

class NavigationItem {
  final String title;
  final IconData icon;
  final List<NavigationItem>? subItems;

  NavigationItem({required this.title, required this.icon, this.subItems});
}

List<NavigationItem> navigationItems = [
  NavigationItem(title: "Dashboard", icon: Icons.dashboard),
  NavigationItem(
    title: "Proyectos",
    icon: Icons.folder,
    subItems: [
      NavigationItem(title: "Pizarra", icon: Icons.dashboard),
      NavigationItem(title: "Gestión", icon: Icons.settings),
      NavigationItem(title: "Estadísticas", icon: Icons.bar_chart),
    ],
  ),
  NavigationItem(title: "Roadmap", icon: Icons.map, subItems: [
    NavigationItem(title: "Pizarra", icon: Icons.dashboard),
    NavigationItem(title: "Gestión", icon: Icons.settings),
    NavigationItem(title: "Estadísticas", icon: Icons.bar_chart),
  ]),
  NavigationItem(title: "General", icon: Icons.dashboard, subItems: [
    NavigationItem(title: "Pizarra", icon: Icons.dashboard),
    NavigationItem(title: "Gestión", icon: Icons.settings),
    NavigationItem(title: "Estadísticas", icon: Icons.bar_chart),
  ]),
  // NavigationItem(title: "Login", icon: Icons.login),
  NavigationItem(title: "Ajustes", icon: Icons.settings),
];
