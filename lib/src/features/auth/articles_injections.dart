import 'package:delivery_app_mobile/src/core/network/dio_network.dart';
import 'package:delivery_app_mobile/src/core/utils/injections.dart';
import 'package:delivery_app_mobile/src/features/auth/data/data_source/local/auth_shared_prefs.dart';
import 'package:delivery_app_mobile/src/features/auth/data/data_source/remote/auth_impl_api.dart';
import 'package:delivery_app_mobile/src/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:delivery_app_mobile/src/features/auth/domain/repositories/abstract_auth_repository.dart';
import 'package:delivery_app_mobile/src/features/auth/domain/usecase/auth_usecase.dart';

initAuthInjections() {
  sl.registerSingleton<AuthImplApi>(AuthImplApi(DioNetwork.appAPI));
  sl.registerSingleton<AbstractAuthRepository>(AuthRepositoryImpl(sl()));
  sl.registerSingleton<AuthSharedPrefs>(AuthSharedPrefs(sl()));
  sl.registerSingleton<AuthUseCase>(AuthUseCase(sl()));
}
