import 'package:dartz/dartz.dart';
import 'package:delivery_app_mobile/src/core/network/error/failures.dart';

abstract class UseCase<T, Params> {
  Future<Either<Failure, T>> call(Params params);
}

class NoParams {}
