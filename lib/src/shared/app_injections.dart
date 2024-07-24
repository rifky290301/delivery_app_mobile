import 'package:delivery_app_mobile/src/core/utils/injections.dart';
import 'package:delivery_app_mobile/src/shared/data/data_sources/app_shared_prefs.dart';

initAppInjections() {
  sl.registerFactory<AppSharedPrefs>(() => AppSharedPrefs(sl()));
}
