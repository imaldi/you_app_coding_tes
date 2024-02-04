import 'package:you_app_coding_tes/core/use_case/base_use_case.dart';
import 'package:you_app_coding_tes/features/auth/data/source/network/auth_endpoint.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource  {
  final AuthEndpoint _authEndpoint;

  AuthRemoteDataSourceImpl(this._authEndpoint);

  @override
  Future<bool> userLogin(String username, String email, String password) async {
    return await _authEndpoint
        .userLogin(UserAuthParams(username: username, email: email, password: password));
  }

  @override
  Future<bool> userRegister(String username, String email, String password) async {
    return await _authEndpoint
        .userRegister(UserAuthParams(username: username, email: email, password: password));
  }
}

abstract class AuthRemoteDataSource {
  Future<bool> userLogin(String username, String email, String password);
  Future<bool> userRegister(String username, String email, String password);
}