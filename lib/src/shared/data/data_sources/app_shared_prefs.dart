import 'package:delivery_app_mobile/src/core/utils/constant/local_storage_constants.dart';
import 'package:delivery_app_mobile/src/shared/domain/entities/language_enum.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPrefs {
  final SharedPreferences _preferences;

  AppSharedPrefs(this._preferences);

  /// __________ Language __________ ///
  LanguageEnum? getLang() {
    String? data = _preferences.getString(lang);
    if (data == null) {
      return LanguageEnum.en;
    }
    return LanguageEnum.values.firstWhere((element) => element.name == data);
  }

  void setLang(LanguageEnum language) {
    _preferences.setString(lang, language.name);
  }

  /// __________ Dark Theme __________ ///
  bool getIsDarkTheme() {
    return _preferences.getBool(theme) ?? false;
  }

  void setDarkTheme(bool isDark) {
    _preferences.setBool(theme, isDark);
  }
}
