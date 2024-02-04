import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'auth_endpoint.g.dart';

@RestApi()
abstract class AuthEndpoint {
  factory AuthEndpoint(Dio dio, {String baseUrl}) = _AuthEndpoint;

  @GET("/login")
  Future<bool> userLogin(
      @Query("username") String username,
      @Query("email") String email,
      @Query("password") String password,
      );

  @GET("/register")
  Future<bool> userRegister(
      @Query("username") String username,
      @Query("email") String email,
      @Query("password") String password,
      );
}