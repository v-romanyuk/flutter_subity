// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../layouts/default_layout.dart' as _i1;
import '../screens/cards/cards_screen.dart' as _i4;
import '../screens/dashboard/dashboard_screen.dart' as _i2;
import '../screens/settings/settings_screen.dart' as _i5;
import '../screens/subscriptions/subscriptions_screen.dart' as _i3;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    DefaultLayout.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.DefaultLayout());
    },
    DashboardRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.DashboardScreen());
    },
    SubscriptionsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SubscriptionsScreen());
    },
    CardsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.CardsScreen());
    },
    SettingsRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingsScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(DefaultLayout.name, path: '/', children: [
          _i6.RouteConfig(DashboardRoute.name,
              path: 'dashboard', parent: DefaultLayout.name),
          _i6.RouteConfig(SubscriptionsRoute.name,
              path: 'subscriptions', parent: DefaultLayout.name),
          _i6.RouteConfig(CardsRoute.name,
              path: 'cards', parent: DefaultLayout.name),
          _i6.RouteConfig(SettingsRoute.name,
              path: 'settings', parent: DefaultLayout.name)
        ])
      ];
}

/// generated route for [_i1.DefaultLayout]
class DefaultLayout extends _i6.PageRouteInfo<void> {
  const DefaultLayout({List<_i6.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'DefaultLayout';
}

/// generated route for [_i2.DashboardScreen]
class DashboardRoute extends _i6.PageRouteInfo<void> {
  const DashboardRoute() : super(name, path: 'dashboard');

  static const String name = 'DashboardRoute';
}

/// generated route for [_i3.SubscriptionsScreen]
class SubscriptionsRoute extends _i6.PageRouteInfo<void> {
  const SubscriptionsRoute() : super(name, path: 'subscriptions');

  static const String name = 'SubscriptionsRoute';
}

/// generated route for [_i4.CardsScreen]
class CardsRoute extends _i6.PageRouteInfo<void> {
  const CardsRoute() : super(name, path: 'cards');

  static const String name = 'CardsRoute';
}

/// generated route for [_i5.SettingsScreen]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: 'settings');

  static const String name = 'SettingsRoute';
}
