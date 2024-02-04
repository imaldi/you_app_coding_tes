// Parameters have to be put into a container object so that they can be
// included in this abstract base class method definition.
import '../../../../core/failures/app_failures.dart';
import 'package:fpdart/fpdart.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_use_case.freezed.dart';
part 'base_use_case.g.dart';

abstract class UseCase<Type, Params> {
  Future<Either<AppFailure, Type>> call(Params params);
}

// This will be used by the code calling the use case whenever the use case
// doesn't accept any parameters.
@freezed
class NoParams with _$NoParams {
  const factory NoParams() = _NoParams;
}

@freezed
class UserAuthParams with _$UserAuthParams {
  const factory UserAuthParams({
    required String email,
    required String username,
    required String password,
  }) = _UserAuthParams;

  factory UserAuthParams.fromJson(Map<String, Object?> json)
=> _$UserAuthParamsFromJson(json);
}