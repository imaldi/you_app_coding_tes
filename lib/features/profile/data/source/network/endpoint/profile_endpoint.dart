import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:you_app_coding_tes/core/use_case/base_use_case.dart';

import '../model/user_model.dart';

part 'profile_endpoint.g.dart';

@RestApi()
abstract class ProfileEndpoint {
  factory ProfileEndpoint(Dio dio, {String baseUrl}) = _ProfileEndpoint;

  @POST("api/createProfile")
  Future<bool> createProfile(@Body() UserApiModel userProfileParams);


  @GET("api/getProfile")
  Future<bool> getProfile();

  @POST("api/updateProfile")
  Future<bool> updateProfile(@Body() UserApiModel userProfileParams);
}
