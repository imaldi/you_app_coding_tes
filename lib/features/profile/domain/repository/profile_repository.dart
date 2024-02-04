import 'package:fpdart/fpdart.dart';

import '../../../../core/failures/app_failures.dart';

abstract class ProfileRepository {
  // FIX me is it okay to use entity here?
  Future<Either<AppFailure, bool>> createProfile(
    String? name,
    String? birthday,
    String? height,
    String? weight,
    List<String>? interests,
  );

  Future<Either<AppFailure, bool>> getProfile();

  Future<Either<AppFailure, bool>> updateProfile(
    String? name,
    String? birthday,
    String? height,
    String? weight,
    List<String>? interests,
  );
}
