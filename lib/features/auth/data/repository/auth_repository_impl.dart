import 'package:fpdart/src/either.dart';
import 'package:you_app_coding_tes/core/failures/app_failures.dart';
import 'package:you_app_coding_tes/features/auth/domain/repository/auth_repository.dart';

import '../../../../core/network/api_error.dart';
import '../auth_remote_data_source.dart';

// TODO: inject with injectable
class AuthRepositoryImpl extends AuthRepository {
  /// TODO inject with injectable
  final AuthRemoteDataSource _remoteDataSource;
  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<AppFailure, bool>> userLogin(
      String username, String email, String password) async {
    try {
      await _remoteDataSource.userLogin(username, email, password);
      return const Right(true);
    } catch (e) {
      // todo solve about catching dio Errors
      return const Left(ApiError());
    }
  }

  @override
  Future<Either<AppFailure, bool>> userRegister(
      String username, String email, String password) async {
    try {
      await _remoteDataSource.userRegister(username, email, password);
      return const Right(true);
    } catch (e) {
      // todo solve about catching dio Errors
      return const Left(ApiError());
    }
  }
}
