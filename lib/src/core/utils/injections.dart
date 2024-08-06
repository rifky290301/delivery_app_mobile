import 'package:delivery_app_mobile/src/core/network/dio_network.dart';
import 'package:delivery_app_mobile/src/core/utils/log/app_logger.dart';
import 'package:delivery_app_mobile/src/features/auth/articles_injections.dart';
import 'package:delivery_app_mobile/src/shared/app_injections.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initInjections() async {
  await initSharedPrefsInjections();
  await initAppInjections();
  await initDioInjections();
  await initAuthInjections();
}

initSharedPrefsInjections() async {
  sl.registerSingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });
  await sl.isReady<SharedPreferences>();
}

Future<void> initDioInjections() async {
  initRootLogger();
  DioNetwork.initDio();
}
