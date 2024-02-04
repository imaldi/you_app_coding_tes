import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failures.freezed.dart';
part 'app_failures.g.dart';

abstract class AppFailure {
}

@freezed
class ApiFailure with _$ApiFailure {
  @Implements<AppFailure>()
  const factory ApiFailure({
    int? statusCode,
    String? message,
    Map<String, dynamic>? errors,
  }) = _ApiFailure;

  factory ApiFailure.fromJson(Map<String, Object?> json)
    => _$ApiFailureFromJson(json);
}

// class NoInternetFailure extends Failure {}
//
// class CacheFailure extends Failure {}
//
// class LocationServiceDisabledFailure extends Failure {}
//
// class PermissionDeniedFailure extends Failure {}
//
// class DataNotFoundFailure extends Failure {}