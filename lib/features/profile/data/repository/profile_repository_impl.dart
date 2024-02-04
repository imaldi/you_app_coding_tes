import 'package:fpdart/src/either.dart';

import 'package:you_app_coding_tes/core/failures/app_failures.dart';

import 'package:you_app_coding_tes/features/profile/domain/entity/user_entity.dart';

import '../../domain/repository/profile_repository.dart';
import '../profile_remote_data_source.dart';

class ProfileRepositoryImpl extends ProfileRepository {

  final ProfileRemoteDataSource _remoteDataSource;
  ProfileRepositoryImpl(this._remoteDataSource);
  @override
  Future<Either<AppFailure, bool>> createProfile(User user) {
    // TODO: implement createProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<AppFailure, bool>> getProfile(User user) {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<AppFailure, bool>> updateProfile(User user) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }

}