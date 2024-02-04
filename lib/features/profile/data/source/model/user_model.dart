import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserApiModel with _$UserApiModel {
  const factory UserApiModel({
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
}