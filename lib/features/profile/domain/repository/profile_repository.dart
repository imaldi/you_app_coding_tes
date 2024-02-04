import 'package:fpdart/fpdart.dart';

import '../../../../core/failures/app_failures.dart';
import '../entity/user_entity.dart';

abstract class ProfileRepository {
  // FIX me is it okay to use entity here?
  Future<Either<AppFailure,bool>> createProfile(User user);
  Future<Either<AppFailure,bool>> getProfile(User user);
  Future<Either<AppFailure,bool>> updateProfile(User user);
}