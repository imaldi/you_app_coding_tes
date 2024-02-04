import 'package:dio/dio.dart';
import 'package:fpdart/src/either.dart';
import 'package:you_app_coding_tes/core/failures/app_failures.dart';
import 'package:you_app_coding_tes/core/network/api_error.dart';
import 'package:you_app_coding_tes/features/profile/data/source/model/user_model.dart';

import '../../domain/repository/profile_repository.dart';
import '../profile_remote_data_source.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  final ProfileRemoteDataSource _remoteDataSource;

  ProfileRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<AppFailure, bool>> createProfile(String? name, String? birthday,
      String? height, String? weight, List<String>? interests) async {
    try {
      await _remoteDataSource.createProfile(UserApiModel(
        name: name,
        birthday: birthday,
        height: height,
        weight: weight,
        interests: interests,
      ));
      return Right(true);
    } on DioException catch (e) {
      return Left(ApiError(
          statusCode: e.response?.statusCode,
          message: e.response?.statusMessage));
    }
  }

  @override
  Future<Either<AppFailure, bool>> getProfile() async {
    try {
      await _remoteDataSource.getProfile();
      return const Right(true);
    } on DioException catch (e) {
      return Left(ApiError(
          statusCode: e.response?.statusCode,
          message: e.response?.statusMessage));
    }
  }

  @override
  Future<Either<AppFailure, bool>> updateProfile(
    String? name,
    String? birthday,
    String? height,
    String? weight,
    List<String>? interests,
  ) async {
    try {
      await _remoteDataSource.updateProfile(UserApiModel(
        name: name,
        birthday: birthday,
        height: height,
        weight: weight,
        interests: interests,
      ));
      return const Right(true);
    } on DioException catch (e) {
      return Left(ApiError(
          statusCode: e.response?.statusCode,
          message: e.response?.statusMessage));
    }
  }
}
