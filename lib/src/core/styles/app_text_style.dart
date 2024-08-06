import 'package:delivery_app_mobile/src/core/styles/app_colors.dart';
import 'package:flutter/material.dart';

part 'app_font_size.dart';
part 'app_fonts.dart';

abstract class AppTextStyle {
  AppTextStyle._();

  static const logoTitle = TextStyle(
    fontSize: 40,
    fontFamily: _AppFonts.vigaRegular,
  );

  static const buttonTitle = TextStyle(
    fontSize: 16,
    fontFamily: _AppFonts.bentonSansBold,
    color: Colors.white,
  );

  static const bentonSansMedium = TextStyle(
    fontSize: 12,
    fontFamily: _AppFonts.bentonSansBook,
    fontWeight: FontWeight.w700,
  );

  // ----------Black----------//

  static const headlineLargeBlack = TextStyle(
    fontSize: 32,
    fontFamily: _AppFonts.bentonSansBold,
    color: AppColors.black100,
  );

  static const headlineMediumBlack = TextStyle(
    fontSize: 22,
    fontFamily: _AppFonts.bentonSansBold,
    color: AppColors.black100,
  );

  static const bodyMediumBlack = TextStyle(
    fontSize: 12,
    fontFamily: _AppFonts.bentonSansBook,
    color: AppColors.black100,
  );

  static const logoSubTitleBlack = TextStyle(
    fontSize: 14,
    fontFamily: _AppFonts.vigaRegular,
    color: AppColors.black100,
  );

  // ----------White----------//

  static const headlineLargeWhite = TextStyle(
    fontSize: 32,
    fontFamily: _AppFonts.bentonSansBold,
    color: Colors.white,
  );

  static const headlineMediumWhite = TextStyle(
    fontSize: 22,
    fontFamily: _AppFonts.bentonSansBold,
    color: Colors.white,
  );

  static const bodyMediumWhite = TextStyle(
    fontSize: 12,
    fontFamily: _AppFonts.bentonSansBook,
    color: Colors.white,
  );

  static const logoSubTitleWhite = TextStyle(
    fontSize: 14,
    fontFamily: _AppFonts.vigaRegular,
    color: Colors.white,
  );
}
