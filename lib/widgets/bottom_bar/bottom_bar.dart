import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_subity/models/general_models.dart';

import '../../styles/colors.dart';

class BottomBar extends StatelessWidget {
  final int currentTabIndex;
  final Function(int)? onTap;

  final List<NavItem> navItems;

  const BottomBar({
    Key? key,
    this.onTap,
    required this.currentTabIndex,
    required this.navItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.buntingBlue,
      ),
      margin: const EdgeInsets.only(bottom: 25, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: navItems.asMap().entries.map((entry) {
          return GestureDetector(
            onTap: () => onTap?.call(navItems.indexOf(entry.value)),
            child: Icon(
              entry.value.icon,
              color: currentTabIndex == entry.key ? AppColors.white : AppColors.buntingBlueLight,
            ),
          );
        }).toList(),
      ),
    );
  }
}
