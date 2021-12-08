import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  static const routeName = 'DashboardRoute';
  static const routePath = 'dashboard';

  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Dashboard'),
    );
  }
}
