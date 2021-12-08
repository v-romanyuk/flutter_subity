import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class NavItem {
  final IconData? icon;
  final PageRouteInfo route;
  final String? label;

  NavItem({this.icon, this.label, required this.route});
}
