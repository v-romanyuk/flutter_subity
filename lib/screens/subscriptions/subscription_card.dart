import 'package:flutter/material.dart';
import 'package:flutter_subity/styles/colors.dart';
import 'package:flutter_subity/styles/typography.dart';
import 'package:flutter_subity/widgets/price.dart';
import 'package:flutter_subity/widgets/service_logo.dart';

class SubscriptionCard extends StatelessWidget {
  // final String icon;
  final num price;
  final String title;
  final String description;
  final String startDate;
  final String endDate;
  final EdgeInsets? margin;

  const SubscriptionCard({
    Key? key,
    // required this.icon,
    required this.price,
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    this.margin,
  }) : super(key: key);

  String get daysLeft {
    final from = DateTime.now();
    return (DateTime.parse(endDate).difference(from).inHours / 24).toStringAsFixed(0);
  }

  double get subscriptionProgress {
    final startDateToNowDifference = DateTime.now().difference(DateTime.parse(startDate)).inHours / 24;
    final allDays = (DateTime.parse(endDate).difference(DateTime.parse(startDate))).inHours / 24;
    return startDateToNowDifference / allDays;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: 150,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(27),
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 38, 111, 0.1),
            blurRadius: 36,
            spreadRadius: 0,
            offset: Offset(0, 7),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ServiceLogo(size: 40),
              Padding(padding: const EdgeInsets.only(left: 10), child: Price(price: price)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                height: 1.2,
                letterSpacing: 0.23,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              description,
              style: AppTextStyles.description,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SizedBox(
                        height: 22,
                        width: 22,
                        child: CircularProgressIndicator(
                          backgroundColor: AppColors.base1,
                          strokeWidth: 2,
                          value: subscriptionProgress,
                          semanticsLabel: 'Linear progress indicator',
                        ),
                      ),
                      Text(
                        daysLeft,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      'days left',
                      style: TextStyle(fontWeight: FontWeight.w700, height: 1.2, letterSpacing: -0.7),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
