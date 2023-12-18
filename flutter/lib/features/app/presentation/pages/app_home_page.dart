import 'package:djangoflow_app/djangoflow_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_news/features/app/app.dart';

import '../../../../configurations/configurations.dart';

@RoutePage()
class AppHomePage extends StatelessWidget implements AutoRouteWrapper {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) => AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          ScrollingRoute(),
          FavoriteRoute(),
          SettingsRoute(),
        ],
        transitionBuilder: (context, child, animation) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.fastOutSlowIn;

          if ((context.tabsRouter.previousIndex ?? 0) <
              context.tabsRouter.activeIndex) {
            return SlideTransition(
              position: animation.drive(
                Tween(begin: begin, end: end).chain(
                  CurveTween(
                    curve: curve,
                  ),
                ),
              ),
              child: child,
            );
          } else {
            return SlideTransition(
              position: animation.drive(
                Tween(begin: -begin, end: -end).chain(
                  CurveTween(curve: curve),
                ),
              ),
              child: child,
            );
          }
        },
        animationCurve: Curves.easeInOut,
        resizeToAvoidBottomInset: false,
        bottomNavigationBuilder: (context, tabsRouter) {
          final activeIndex = tabsRouter.activeIndex;
          return SafeArea(
            bottom: true,
            child: Theme(
              data: Theme.of(context).copyWith(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
              ),
              child: BottomNavigationBar(
                onTap: (value) {
                  tabsRouter.setActiveIndex(value);
                },
                currentIndex: activeIndex,
                type: BottomNavigationBarType.fixed,
                items: [
                  _BottomNavBarItem(
                    icon: activeIndex == 0
                        ? Icons.home_rounded
                        : Icons.home_outlined,
                    label: 'Home',
                  ),
                  _BottomNavBarItem(
                    icon: activeIndex == 1
                        ? Icons.search
                        : Icons.search_outlined,
                    label: 'Search',
                  ),
                  _BottomNavBarItem(
                    icon: activeIndex == 2
                        ? Icons.bookmark
                        : Icons.bookmark_border_outlined,
                    label: 'Saved',
                  ),
                  _BottomNavBarItem(
                    icon: activeIndex == 3
                        ? Icons.person
                        : Icons.person_outline,
                    label: 'Profile',
                  ),
                  // _BottomNavBarItem(
                  //   icon: activeIndex == 4 ? CupertinoIcons.settings_solid : CupertinoIcons.settings,
                  //   label: 'Settings',
                  // ),
                ],
              ),
            ),
          );
        },
      );

  @override
  Widget wrappedRoute(BuildContext context) => this;
}

class _BottomNavBarItem extends BottomNavigationBarItem {
  _BottomNavBarItem({
    required String label,
    required IconData icon,
  }) : super(
          label: label,
          icon: Padding(
            padding: const EdgeInsets.all(kPadding),
            child: Icon(icon),
          ),
        );
}
