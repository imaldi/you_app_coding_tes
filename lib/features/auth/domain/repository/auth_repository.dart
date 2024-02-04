import 'package:fpdart/fpdart.dart';
import 'package:you_app_coding_tes/core/failures/app_failures.dart';

abstract class AuthRepository {
  Future<Either<AppFailure,bool>> userLogin(String username, String email, String password);
  Future<Either<AppFailure,bool>> userRegister();
}