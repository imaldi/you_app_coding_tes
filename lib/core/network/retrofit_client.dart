import 'package:dio/dio.dart';
import 'package:logging/logging.dart';

import '../configs/app_config.dart';
import 'error_convertor.dart';

extension DioClientExtension on Dio {
  static Dio getUserApiClient({
    contentType = "application/json",
    bool shouldRefreshToken = true,
    ApiAuthorization authorizationType = ApiAuthorization.none,
    String? accessToken,
  }) {
    Map<String, String> headers = {
      "Content-Type": contentType,
      "Accept": "application/json",
      "x-access-token": "$accessToken",
    };
    Dio dio = Dio(BaseOptions(
      baseUrl: AppConfig.urlYouApp,
      headers: headers,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
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
