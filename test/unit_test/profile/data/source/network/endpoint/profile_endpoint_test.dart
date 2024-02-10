import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:you_app_coding_tes/core/configs/app_config.dart';
import 'package:you_app_coding_tes/features/auth/data/source/network/model/auth_model.dart';
import 'package:you_app_coding_tes/features/profile/data/source/network/endpoint/profile_endpoint.dart';
import 'package:you_app_coding_tes/features/profile/data/source/network/model/profile_response.dart';
import 'package:you_app_coding_tes/features/profile/data/source/network/model/user_model.dart';

import '../../../../../network_config/mock_interceptor/dio_mock_responses_adapter.dart';

/// NOTE: All test not Passed
void main() {
  late Dio dioClient;
  late ProfileEndpoint endpoint;
  late String baseUrl;

  DioMockResponsesAdapter _createMockAdapterForGetProfileRequest(
      int responseCode, Object responseBody) {
    return DioMockResponsesAdapter(MockAdapterInterceptor(
      RequestType.GET,
      baseUrl,
      "/getProfile",
      {},
      responseBody,
      responseCode,
    ));
  }

  Map<String, dynamic> generateValidUsers() =>
      // [
      {
        "name": "Aldi",
        "birthday": "October 2nd 1998",
        "height": "157",
        "weight": "49",
        "interests": ["Programming", "Math"]
      };
  // {
  //   "name": "Aldi2",
  //   "birthday": "October 3rd 1999",
  //   "height": "160",
  //   "weight": "47",
  //   "interests": ["Gaming", "Science"]
  // },
  // ];

  UserApiModel expectedValidUser() => const
      // [
      UserApiModel(
        name: "Aldi",
        birthday: "October 2nd 1998",
        height: "157",
        weight: "49",
        interests: ["Programming", "Math"],
      );
  //   UserApiModel(
  //     name: "Aldi2",
  //     birthday: "October 3rd 1999",
  //     height: "160",
  //     weight: "47",
  //     interests: ["Gaming", "Science"],
  //   ),
  // ];

  group("Test User Profile Endpoint API calls", () {
    setUp(() {
      baseUrl = AppConfig.urlYouApp;
      dioClient = Dio(BaseOptions());
      endpoint = ProfileEndpoint(dioClient, baseUrl: baseUrl);
    });

    test('Test endpoint calls dio', () async {
      dioClient.httpClientAdapter = _createMockAdapterForGetProfileRequest(
        200,
        {
          "message": "Profile has been found successfully",
          "data": {
            "email": "aldiirsanmajid@gmail.com",
            "username": "aldi_irsan_majid",
            "interests": ["Read", "Write"]
          }
        },
      );
      var result = await endpoint.getProfile();
      expect(
          result,
          const ProfileResponse(
              message: "Profile has been found successfully",
              data: UserApiModel(
                  email: "aldiirsanmajid@gmail.com",
                  username: "aldi_irsan_majid",
                  interests: ["Read", "Write"])));
    });

    test('Test endpoint returns error', () async {
      dioClient.httpClientAdapter = _createMockAdapterForGetProfileRequest(
        500,
        {"statusCode": 500, "message": "Internal server error"},
      );
      ProfileResponse? profileResponse;
      DioException? exception;
      try {
        profileResponse = await endpoint.getProfile();
      } on DioException catch (dioException, _) {
        exception = dioException;
      }
      expect(profileResponse, false);
      expect(exception?.error, "Internal Server Error");
    });

    // test('Test endpoint calls and returns 2 valid universities', () async {
    //   dioClient.httpClientAdapter = _createMockAdapterForGetProfileRequest(
    //     200,
    //     generateValidUsers(),
    //   );
    //   var result = await endpoint.getProfile();
    //   expect(result, expectedValidUser());
    // });
  });
}
