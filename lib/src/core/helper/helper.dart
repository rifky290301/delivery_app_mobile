import 'package:delivery_app_mobile/src/core/utils/constant/app_constants.dart';
import 'package:delivery_app_mobile/src/core/utils/injections.dart';
import 'package:delivery_app_mobile/src/shared/data/data_sources/app_shared_prefs.dart';
import 'package:delivery_app_mobile/src/shared/domain/entities/language_enum.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Helper {
  /// Get language
  static LanguageEnum getLang() {
    LanguageEnum? lang;
    lang = sl<AppSharedPrefs>().getLang();
    lang = lang ?? LanguageEnum.en;
    return lang;
  }

  static String getSvgIcon(String name) {
    return "$svgIcon$name";
  }

  static String getSvgIconNotification(String name) {
    return "$svgIconNotification$name";
  }

  static String getImagePath(String name) {
    return "$imagePath$name";
  }

  static String getImagePathPromo(String name) {
    return "$imagePathPromo$name";
  }

  static String getImagePathRestaurant(String name) {
    return "$imagePathRestaurant$name";
  }

  static String getSvgPath(String name) {
    return "$svgPath$name";
  }

  static String getImagesLogo(String name) {
    return "$imagesLogo$name";
  }

  static String getSvgLogo(String name) {
    return "$svgLogo$name";
  }

  /// Get vertical space
  static double getVerticalSpace() {
    return 10.h;
  }

  /// Get horizontal space
  static double getHorizontalSpace() {
    return 10.w;
  }

  /// Get Dio Header
  static Map<String, dynamic> getHeaders() {
    return {}..removeWhere((key, value) => value == null);
  }

  static bool isDarkTheme() {
    return sl<AppSharedPrefs>().getIsDarkTheme();
  }
}
