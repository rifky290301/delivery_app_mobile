import 'package:delivery_app_mobile/src/features/auth/domain/models/login_params.dart';
import 'package:delivery_app_mobile/src/shared/domain/models/api_response.dart';
import 'package:delivery_app_mobile/src/shared/domain/models/user_model.dart';

abstract class AbstractAuthApi {
  Future<ApiResponse<String>> login(LoginParams params);
  Future<ApiResponse<UserModel>> register(UserModel params);
}
