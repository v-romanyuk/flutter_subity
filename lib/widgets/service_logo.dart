import 'package:flutter/material.dart';
import 'package:flutter_subity/styles/colors.dart';

class ServiceLogo extends StatelessWidget {
  final double size;
  const ServiceLogo({
    Key? key,
    required this.size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: AppColors.base1,
        borderRadius: BorderRadius.circular(15),
      ),
      child: FlutterLogo(),
    );
  }
}
