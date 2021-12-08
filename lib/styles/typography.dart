import 'package:flutter/cupertino.dart';
import 'package:flutter_subity/styles/colors.dart';

class AppTextStyles {
  // This class is not meant to be instantiated or extended;
  // this constructor prevents instantiation and extension.
  AppTextStyles._();

  static const headline = TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: AppColors.textPrimary);

  static const subtitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    height: 1.4,
    color: AppColors.textPrimary,
  );

  static const description = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
    height: 1.2,
    letterSpacing: 0.18,
  );

  static const price = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
    height: 2,
    letterSpacing: 0.3,
  );
}
