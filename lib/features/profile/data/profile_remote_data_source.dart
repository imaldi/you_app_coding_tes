import 'package:you_app_coding_tes/core/use_case/base_use_case.dart';
import 'package:you_app_coding_tes/features/auth/data/source/network/auth_endpoint.dart';
import 'package:you_app_coding_tes/features/profile/data/source/model/user_model.dart';
import 'package:you_app_coding_tes/features/profile/data/source/network/profile_endpoint.dart';
import 'package:you_app_coding_tes/features/profile/domain/entity/user_entity.dart';

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource  {
  final ProfileEndpoint _profileEndpoint;

  ProfileRemoteDataSourceImpl(this._profileEndpoint);

  @override
  Future<bool> createProfile(UserApiModel userParam) async {
    // throw UnimplementedError();
    return await _profileEndpoint
        .createProfile(userParam);
  }
  @override
  Future<bool> updateProfile(UserApiModel userParam) async {
    // throw UnimplementedError();
    return await _profileEndpoint
        .updateProfile(userParam);
  }

  @override
  Future<bool> getProfile() async {
    throw UnimplementedError();

    // return await _profileEndpoint
    //     .userRegister(UserAuthParams(username: username, email: email, password: password));
  }



}

abstract class ProfileRemoteDataSource {
  Future<bool> createProfile(UserApiModel userParam);
  Future<bool> getProfile();
  Future<bool> updateProfile(UserApiModel userParam);
}