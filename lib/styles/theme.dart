import 'package:flutter/material.dart';
import 'package:flutter_subity/styles/colors.dart';

ThemeData appTheme = ThemeData(
  primaryColor: AppColors.primary,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.transparent,
    elevation: 0,
    centerTitle: false,
    titleSpacing: 0,
  ),
  dividerColor: AppColors.base3,
  textTheme: const TextTheme(
    bodyText1: TextStyle(fontSize: 14, height: 1),
    bodyText2: TextStyle(fontSize: 14, height: 1),
  ).apply(
    bodyColor: AppColors.textPrimary,
    displayColor: AppColors.textPrimary,
  ),
);
