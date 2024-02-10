import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:you_app_coding_tes/core/failures/app_failures.dart';

part 'api_error.freezed.dart';
part 'api_error.g.dart';

@freezed
class ApiError extends AppFailure with _$ApiError {
  // @Implements<AppFailure>()
  const factory ApiError({
    int? statusCode,
    String? message,
    Map<String, dynamic>? errors,
  }) = _ApiError;

  factory ApiError.fromJson(Map<String, Object?> json) =>
      _$ApiErrorFromJson(json);
}
