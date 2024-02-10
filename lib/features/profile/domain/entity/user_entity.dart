import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    String? name,
    String? birthday,
    String? height,
    String? weight,
    List<String>? interests,
  }) = _User;
}
