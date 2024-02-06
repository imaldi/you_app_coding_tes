import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import '../../../../domain/entity/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserApiModel with _$UserApiModel {
  /// have to add this default empty constructor
  const UserApiModel._();
  const factory UserApiModel({
    @JsonKey(name: "email")
    String? email,
    @JsonKey(name: "username")
    String? username,
    @JsonKey(name: "password")
    String? password,
    @JsonKey(name: "name")
    String? name,
    @JsonKey(name: "birthday")
    String? birthday,
    @JsonKey(name: "height")
    String? height,
    @JsonKey(name: "weight")
    String? weight,
    @JsonKey(name: "interests")
    List<String>? interests,
  }) = _UserApiModel;

  factory UserApiModel.fromJson(Map<String, dynamic> json) => _$UserApiModelFromJson(json);

  // factory UserApiModel.fromDomain(User user) {
  //   return UserApiModel(
  //     name: user.name,
  //     birthday: user.birthday,
  //     height: user.height,
  //     weight: user.weight,
  //     interests: user.interests,
  //   );
  // }

  User toDomain() {
    return User(
      name: name,
      birthday: birthday,
      height: height,
      weight: weight,
      interests: interests?.map((e) => e ?? "").toList() ?? [],
    );
  }
}