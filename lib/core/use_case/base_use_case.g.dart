// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_use_case.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserLoginParamsImpl _$$UserLoginParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$UserLoginParamsImpl(
      email: json['email'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$UserLoginParamsImplToJson(
        _$UserLoginParamsImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
    };
