import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_subity/models/general_models.dart';
import 'package:flutter_subity/router/router.gr.dart';
import 'package:flutter_subity/styles/colors.dart';
import 'package:flutter_subity/styles/icomoon.dart';
import 'package:flutter_subity/widgets/bottom_bar/bottom_bar.dart';

class DefaultLayout extends StatefulWidget {
  const DefaultLayout({Key? key}) : super(key: key);

  @override
  State<DefaultLayout> createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> {
  final _navItems = <NavItem>[
    NavItem(icon: AppIcons.home, route: const DashboardRoute()),
    NavItem(icon: AppIcons.subscriptions, route: const SubscriptionsRoute()),
    NavItem(icon: AppIcons.card, route: const CardsRoute()),
    NavItem(icon: AppIcons.cog, route: const SettingsRoute()),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      extendBody: true,
      backgroundColor: AppColors.base2,
      routes: _navItems.map((navItem) => navItem.route).toList(),
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomBar(
          currentTabIndex: tabsRouter.activeIndex,
          navItems: _navItems,
          onTap: tabsRouter.setActiveIndex,
        );
      },
    );
  }
}
