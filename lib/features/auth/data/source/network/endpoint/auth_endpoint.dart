import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:you_app_coding_tes/core/use_case/base_use_case.dart';

part 'auth_endpoint.g.dart';

@RestApi()
abstract class AuthEndpoint {
  factory AuthEndpoint(Dio dio, {String baseUrl}) = _AuthEndpoint;

  @POST("api/login")
  Future<bool> userLogin(@Body() UserAuthParams userAuthParams);

  @POST("api/register")
  Future<bool> userRegister(@Body() UserAuthParams userAuthParams);
}
