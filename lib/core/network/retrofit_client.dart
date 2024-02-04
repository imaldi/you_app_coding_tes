import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

import '../configs/app_config.dart';
import 'error_convertor.dart';

extension DioClientExtension on Dio {
  static Dio createUniversitiesApiClient({
    contentType = "application/json",
    bool shouldRefreshToken = true,
    ApiAuthorization authorizationType = ApiAuthorization.none,
  }) {
    Map<String, String> headers = {
      "Content-Type": contentType,
      "Accept": "application/json",
    };
    Dio dio = Dio(BaseOptions(
      baseUrl: AppConfig.urlYouApp,
      headers: headers,
      connectTimeout: 10000,
      receiveTimeout: 15000,
      sendTimeout: 15000,
    ));
    dio.interceptors.addAll([
      LogInterceptor(
          responseBody: true,
          requestBody: true,
          logPrint: (text) {
            if (!AppConfig.isProduction) {
              Logger.root.log(Level.INFO, "${DateTime.now()}: $text");
            }
          }),
      ErrorConverter(),
    ]);
    return dio;
  }
}

enum ApiAuthorization { none, basic, token }
