

import '../../../configurations/configurations.dart';

final appHomeRoutes = [
  AutoRoute(
    path: 'home',
    page: HomeRoute.page,
  ),
  AutoRoute(
    path: 'settings',
    page: SettingsRoute.page,
  ),
  AutoRoute(
    path: 'scroll',
    page: ScrollingRoute.page,
  ),
  AutoRoute(
    path: 'favorite',
    page: FavoriteRoute.page,
  ),
];