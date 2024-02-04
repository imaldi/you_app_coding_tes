import 'package:fpdart/src/either.dart';
import 'package:you_app_coding_tes/core/failures/app_failures.dart';
import 'package:you_app_coding_tes/features/auth/domain/repository/auth_repository.dart';

// TODO: inject with injectable
class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<Either<AppFailure, bool>> userLogin(String username, String email, String password) {
    // TODO: implement userLogin
    throw UnimplementedError();
  }

  @override
  Future<Either<AppFailure, bool>> userRegister() {
    // TODO: implement userRegister
    throw UnimplementedError();
  }

}