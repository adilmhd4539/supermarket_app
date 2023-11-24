import 'package:flutter/material.dart';

class AppColors {
  static Color get primary => const Color(0XFF17479b);
  static Color get black => Colors.black;
  static Color get green => Colors.green;
  static Color get white => Colors.white;
  static Color get red => Colors.red;
  static Color get grey => Colors.grey;
}

class AppTextStyles {
  static TextStyle get bodySmallNormal => TextStyle(
      fontSize: 10, color: AppColors.black, fontWeight: FontWeight.w400);

  static TextStyle get bodySmallSemiBold => TextStyle(
      fontSize: 10, color: AppColors.black, fontWeight: FontWeight.w700);
  static TextStyle get bodyNormal => TextStyle(
      fontSize: 12, color: AppColors.black, fontWeight: FontWeight.w400);
  static TextStyle get bodyLargeNormal => TextStyle(
      fontSize: 14, color: AppColors.black, fontWeight: FontWeight.w400);
  static TextStyle get bodyLargeSemiBold => TextStyle(
      fontSize: 14, color: AppColors.black, fontWeight: FontWeight.w600);
  static TextStyle get largeSemiBold => TextStyle(
      fontSize: 16, color: AppColors.black, fontWeight: FontWeight.w600);
}
