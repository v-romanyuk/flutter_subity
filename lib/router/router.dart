import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../layouts/default_layout.dart';
import '../screens/subscriptions/subscriptions_screen.dart';
import '../screens/cards/cards_screen.dart';
import '../screens/dashboard/dashboard_screen.dart';
import '../screens/settings/settings_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: DefaultLayout, children: [
      // D A S H B O A R D
      AutoRoute(
        path: DashboardScreen.routePath,
        name: DashboardScreen.routeName,
        page: DashboardScreen,
      ),

      // S U B S C R I P T I O N S
      AutoRoute(
        path: SubscriptionsScreen.routePath,
        name: SubscriptionsScreen.routeName,
        page: SubscriptionsScreen,
      ),

      // C A R D S
      AutoRoute(
        path: CardsScreen.routePath,
        name: CardsScreen.routeName,
        page: CardsScreen,
      ),

      // S E T T I N G S
      AutoRoute(
        path: SettingsScreen.routePath,
        name: SettingsScreen.routeName,
        page: SettingsScreen,
      ),
    ]),
  ],
)
class $AppRouter {}
