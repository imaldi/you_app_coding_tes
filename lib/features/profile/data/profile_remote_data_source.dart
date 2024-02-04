import 'package:you_app_coding_tes/features/profile/data/source/network/endpoint/profile_endpoint.dart';
import 'package:you_app_coding_tes/features/profile/data/source/network/model/user_model.dart';

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  final ProfileEndpoint _profileEndpoint;

  ProfileRemoteDataSourceImpl(this._profileEndpoint);

  @override
  Future<bool> createProfile(UserApiModel userParam) async {
    return await _profileEndpoint.createProfile(userParam);
  }

  @override
  Future<bool> updateProfile(UserApiModel userParam) async {
    return await _profileEndpoint.updateProfile(userParam);
  }

  @override
  Future<bool> getProfile() async {
    return await _profileEndpoint.getProfile();
  }
}

abstract class ProfileRemoteDataSource {
  Future<bool> createProfile(UserApiModel userParam);

  Future<bool> getProfile();

  Future<bool> updateProfile(UserApiModel userParam);
}
