import 'package:flutter/material.dart';
import 'package:flutter_subity/styles/typography.dart';
import 'package:intl/intl.dart';

class Price extends StatelessWidget {
  final num price;
  const Price({
    Key? key,
    required this.price
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('₦${NumberFormat("#,##,###").format(price)}', style: AppTextStyles.price);
  }
}

