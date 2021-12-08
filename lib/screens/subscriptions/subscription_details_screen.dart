import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class SubscriptionDetailsScreen extends StatelessWidget {
  static const routeName = 'SubscriptionDetailsRoute';
  static const routePath = ':subscriptionId';
  final int subscriptionId;

  const SubscriptionDetailsScreen({
    Key? key,
    @PathParam() required this.subscriptionId
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(subscriptionId.toString()),
    );
  }
}
