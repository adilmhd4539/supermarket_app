import 'package:flutter/material.dart';
import 'package:supermarket/theme/theme_constats.dart';

class AppTheme {
  static IconThemeData iconTheme = IconThemeData(color: AppColors.primary);
  static TextTheme textTheme =
      TextTheme(titleMedium: AppTextStyles.bodyLargeNormal);
  static InputBorder inputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.grey),
    borderRadius: const BorderRadius.all(Radius.circular(10)),
  );
  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
      border: inputBorder,
      enabledBorder: inputBorder,
      focusedErrorBorder:
          inputBorder.copyWith(borderSide: BorderSide(color: AppColors.red)),
      errorBorder: inputBorder.copyWith(
        borderSide: BorderSide(color: AppColors.red),
      ),
      focusedBorder: inputBorder,
      contentPadding: const EdgeInsets.all(10));
  static List<BoxShadow>? commonBoxShadow = [
    BoxShadow(
        blurRadius: 2, spreadRadius: 0, color: AppColors.black.withOpacity(.09))
  ];
  static ElevatedButtonThemeData butttonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.primary,
      surfaceTintColor: AppColors.primary,
      minimumSize: const Size(0, 0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(10),
      textStyle: AppTextStyles.bodyLargeSemiBold,
    ),
  );
  static ColorScheme colorScheme =
      ColorScheme.light(primary: AppColors.primary);
  static AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: AppColors.white,
    elevation: 1,
  );
  static ThemeData appTheme() => ThemeData(
      textTheme: textTheme,
      elevatedButtonTheme: butttonTheme,
      iconTheme: iconTheme,
      inputDecorationTheme: inputDecorationTheme,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: AppColors.white);
}
