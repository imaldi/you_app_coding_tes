import 'package:freezed_annotation/freezed_annotation.dart';


part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    @JsonKey(name: "email")
    String? email,
    @JsonKey(name: "username")
    String? username,
    @JsonKey(name: "interests")
    List<String>? interests,
  }) = _AuthModel;

  factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);
}