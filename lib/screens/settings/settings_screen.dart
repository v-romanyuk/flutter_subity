import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = 'SettingsRoute';
  static const routePath = 'settings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(routeName),
    );
  }
}
