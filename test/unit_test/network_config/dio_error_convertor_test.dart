import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:you_app_coding_tes/core/network/api_error.dart';
import 'package:you_app_coding_tes/core/network/error_convertor.dart';

import 'mock_interceptor/dio_mock_responses_adapter.dart';

/// NOTE: All test not Passed
void main() {
  late Dio dioClient;
  late String baseUrl;

  DioMockResponsesAdapter _createMockAdapterForSearchRequest(
      int responseCode, Object responseBody) {
    return DioMockResponsesAdapter(MockAdapterInterceptor(
      RequestType.GET,
      baseUrl,
      "/test",
      <String, dynamic>{},
      responseBody,
      responseCode,
    ));
  }

  RequestOptions getRequestOptions() {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    return Options(method: 'GET', headers: _headers, extra: _extra)
        .compose(dioClient.options, '/test',
            queryParameters: queryParameters, data: _data)
        .copyWith(baseUrl: dioClient.options.baseUrl);
  }

  group("Test Dio Error Convertor", () {
    setUp(() {
      baseUrl = "https://test.url";
      dioClient = Dio(BaseOptions(baseUrl: baseUrl));
      dioClient.interceptors.add(ErrorConverter());
    });

    test('Test endpoint returns 404 error with error message', () async {
      dioClient.httpClientAdapter = _createMockAdapterForSearchRequest(
        404,
        {"errorMessage": "Not found!"},
      );
      ApiError? apiError;
      try {
        await dioClient.fetch(getRequestOptions());
      } on DioException catch (dioException, _) {
        expect(dioException.error.runtimeType, ApiError);
        apiError = ApiError(statusCode: dioException.response?.statusCode,
          message: dioException.response?.statusMessage,);
      }
      expect(apiError, const ApiError(statusCode: 404, message: "Not found!"));
    });

    test('Test endpoint returns 404 error with no error message', () async {
      dioClient.httpClientAdapter = _createMockAdapterForSearchRequest(
        404,
        {},
      );
      ApiError? apiError;
      try {
        await dioClient.fetch(getRequestOptions());
      } on DioException catch (dioException, _) {
        expect(dioException.error.runtimeType, ApiError);
        apiError = ApiError(statusCode: dioException.response?.statusCode,
            message: dioException.response?.statusMessage,);
      }
      expect(
          apiError, const ApiError(statusCode: 404, message: "Something went wrong"));
    });

    test('Test endpoint returns 400 error with List of errors', () async {
      dioClient.httpClientAdapter = _createMockAdapterForSearchRequest(
        400,
        {
          "errorMessage": "Incorrect fields!",
          "errors": {
            "emailField": "Email is invalid",
            "passwordField": "Password is too short",
          },
        },
      );
      ApiError? apiError;
      try {
        await dioClient.fetch(getRequestOptions());
      }
      /// Changed from DioError catch (dioError,_)
      on DioException catch (dioException, _) {
        expect(dioException.error.runtimeType, ApiError);
        /// changed from apiError = dioError.error;
        apiError = ApiError(statusCode: dioException.response?.statusCode,
        message: dioException.response?.statusMessage,);
      }
      expect(
          apiError,
          const ApiError(
            statusCode: 400,
            message: "Incorrect fields!",
            errors: {
              "emailField": "Email is invalid",
              "passwordField": "Password is too short",
            },
          ));
    });
  });
}
