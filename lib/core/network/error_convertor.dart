import 'dart:convert';

import 'package:dio/dio.dart';

import 'api_error.dart';

class ErrorConverter extends InterceptorsWrapper {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    /// FIXME change to more updated dio
    // if (err.type != DioErrorType.response) {
    //   handler.next(err);
    //   return;
    // }
    Map<String, dynamic> errorBody = {
      "statusCode": -1,
      "message": "Something went wrong",
    };
    errorBody["statusCode"] = err.response?.statusCode;
    var error = err.response?.data;
    Map<String, dynamic> errorResponse = {};
    if (error is String) {
      try {
        errorResponse = (jsonDecode(error) as Map<String, dynamic>);
      } on Exception catch (err, _) {
        errorResponse = {
          "error": (error.isNotEmpty) ? error : errorBody["messsage"],
        };
      }
    } else if (error is Map<String, dynamic>) {
      errorResponse = error;
    }

    errorBody["message"] =
        errorResponse["errorMessage"] ?? errorBody["message"];
    if (errorResponse["errors"] is Map<String, dynamic>) {
      errorBody["errors"] = errorResponse["errors"];
    }

    var apiError = ApiError.fromJson(errorBody);

    handler.next(err
      ..copyWith(
        error: apiError,
        message: apiError.message,
      ));
  }
}
