import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:you_app_coding_tes/features/auth/data/source/network/model/auth_model.dart';
import 'package:you_app_coding_tes/features/profile/data/source/network/model/user_model.dart';


part 'profile_response.freezed.dart';
part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    UserApiModel? data,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);
}

