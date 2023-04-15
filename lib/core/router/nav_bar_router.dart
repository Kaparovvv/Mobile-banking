import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:my_family_flutter/core/exports/exports.dart';
import 'package:my_family_flutter/core/router/app_router.gr.dart';

class NavBarRouter extends StatefulWidget {
  const NavBarRouter({super.key});

  @override
  State<NavBarRouter> createState() => _NavBarRouterState();
}

class _NavBarRouterState extends State<NavBarRouter> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        MainScreenRoute(),
        HistoryScreenRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: ThemeHelper.color08B89D,
            unselectedItemColor: ThemeHelper.colorA0D39F,
            selectedIconTheme:
                const IconThemeData(color: ThemeHelper.color08B89D),
            unselectedIconTheme:
                const IconThemeData(color: ThemeHelper.colorA0D39F),
            items: const [
              BottomNavigationBarItem(
                label: 'Главная',
                icon: ImageIcon(
                  AssetImage(IconHelper.home),
                ),
              ),
              BottomNavigationBarItem(
                label: 'История',
                icon: ImageIcon(
                  AssetImage(IconHelper.history),
                ),
              ),
            ],
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
          ),
        );
      },
    );
  }
}
