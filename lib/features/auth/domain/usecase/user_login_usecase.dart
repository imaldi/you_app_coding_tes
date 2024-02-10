import 'package:fpdart/src/either.dart';

import 'package:you_app_coding_tes/core/failures/app_failures.dart';

import '../../../../core/use_case/base_use_case.dart';
import '../repository/auth_repository.dart';

class UserLoginUseCase extends UseCase<bool, UserAuthParams> {
  final AuthRepository _repository;

  UserLoginUseCase(this._repository);

  @override
  Future<Either<AppFailure, bool>> call(UserAuthParams params) async {
    return await _repository.userLogin(
        params.username, params.email, params.password);
  }
}
