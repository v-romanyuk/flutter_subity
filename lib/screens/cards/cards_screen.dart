import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  static const routeName = 'CardsRoute';
  static const routePath = 'cards';

  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(routeName),
    );
  }
}
