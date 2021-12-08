import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_subity/screens/subscriptions/subscription_card.dart';
import 'package:flutter_subity/styles/colors.dart';
import 'package:flutter_subity/styles/icomoon.dart';
import 'package:flutter_subity/styles/typography.dart';
import 'package:flutter_subity/widgets/price.dart';
import 'package:flutter_subity/widgets/service_logo.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class SubscriptionsScreen extends StatelessWidget {
  static const routeName = 'SubscriptionsRoute';
  static const routePath = 'subscriptions';

  const SubscriptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> imgList = [
      'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
      'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
      'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
    ];
    return Scaffold(
      backgroundColor: AppColors.base2,
      body: SlidingSheet(
        cornerRadius: 40,
        cornerRadiusOnFullscreen: 0.0,
        addTopViewPaddingOnFullscreen: true,
        snapSpec: const SnapSpec(
            // Enable snapping. This is true by default.
            snap: true,
            // Set custom snapping points.
            snappings: [0.6, 1.0],
            // Define to what the snappings relate to. In this case,
            // the total available space that the sheet can expand to.
            positioning: SnapPositioning.relativeToAvailableSpace),
        body: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: [
            SliverAppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarBrightness: Brightness.light,
              ),
              title: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  'Subscriptions',
                  style: AppTextStyles.headline.copyWith(),
                ),
              ),
              actions: [
                Container(
                  height: 33,
                  width: 33,
                  margin: const EdgeInsets.only(right: 25),
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.12),
                        blurRadius: 14,
                      )
                    ],
                    shape: BoxShape.circle,
                  ),
                  child: TextButton(
                    onPressed: () {
                      print('button');
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(CircleBorder()),
                      overlayColor: MaterialStateProperty.all(AppColors.transparent),
                      foregroundColor: MaterialStateProperty.resolveWith((states) {
                        return states.contains(MaterialState.pressed) ? AppColors.base5 : AppColors.textSecondary;
                      }),
                    ),
                    child: Icon(AppIcons.plus, size: 15),
                  ),
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      'Upcoming',
                      style: AppTextStyles.subtitle,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 160,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.none,
                      itemCount: imgList.length,
                      itemBuilder: (context, index) {
                        return SubscriptionCard(
                          margin: EdgeInsets.only(
                            left: index > 0 ? 8 : 25,
                            right: index < imgList.length - 1 ? 8 : 25,
                          ),
                          price: 300,
                          title: 'Behance',
                          description: 'Productivity',
                          startDate: DateTime(2020, 5, 22).toString(),
                          endDate: DateTime(2022, 1, 30).toString(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        headerBuilder: (_, __) => SheetListenerBuilder(
          buildWhen: (oldState, newState) => oldState.isAtTop != newState.isAtTop,
          builder: (context, state) {
            return Material(
              elevation: state.isAtTop ? 0 : 2,
              color: AppColors.white,
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: double.infinity,
                padding: EdgeInsets.only(left: 25, top: state.isAtTop ? 20 : 10, bottom: state.isAtTop ? 20 : 10),
                child: const Text(
                  'All Subscriptions',
                  style: AppTextStyles.subtitle,
                  textAlign: TextAlign.left,
                ),
              ),
            );
          },
        ),
        customBuilder: (BuildContext context, ScrollController controller, SheetState state) => ListView.builder(
          controller: controller,
          itemCount: 25,
          padding: const EdgeInsets.only(top: 0, bottom: 85, left: 25),
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                const ServiceLogo(size: 48),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 20, bottom: 20, right: 25),
                    margin: const EdgeInsets.only(left: 14),
                    decoration: BoxDecoration(
                        border: Border(
                      top: BorderSide(
                        color: Theme.of(context).dividerColor,
                      ),
                    )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Netflix',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 0.27,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text(
                                '30 September 2019',
                                style: AppTextStyles.description,
                              ),
                            ),
                          ],
                        ),
                        Price(price: 1234),
                      ],
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
