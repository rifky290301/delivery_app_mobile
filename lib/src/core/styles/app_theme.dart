import 'package:delivery_app_mobile/src/core/styles/app_colors.dart';
import 'package:delivery_app_mobile/src/core/styles/app_text_style.dart';
import 'package:flutter/material.dart';

/// Light theme
final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColorLight,
  textTheme: const TextTheme(
    headlineLarge: AppTextStyle.headlineLargeBlack,
    headlineMedium: AppTextStyle.headlineMediumBlack,
    bodyMedium: AppTextStyle.bodyMediumBlack,
    headlineSmall: AppTextStyle.logoSubTitleBlack,
  ),
);

/// Dark theme
final ThemeData darkAppTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.scaffoldBackgroundColorDark,
  textTheme: const TextTheme(
    headlineLarge: AppTextStyle.headlineLargeWhite,
    headlineMedium: AppTextStyle.headlineMediumWhite,
    bodyMedium: AppTextStyle.bodyMediumWhite,
    headlineSmall: AppTextStyle.logoSubTitleWhite,
  ),
);
