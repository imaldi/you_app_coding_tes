import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_entity.freezed.dart';

@freezed
class AuthEntity with _$AuthEntity {
  factory AuthEntity({
    required String email,
    required String username,
    required String password,
  }) = _AuthEntity;
}
