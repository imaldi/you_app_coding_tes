// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserApiModelImpl _$$UserApiModelImplFromJson(Map<String, dynamic> json) =>
    _$UserApiModelImpl(
      email: json['email'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      name: json['name'] as String?,
      birthday: json['birthday'] as String?,
      height: json['height'] as String?,
      weight: json['weight'] as String?,
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserApiModelImplToJson(_$UserApiModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'password': instance.password,
      'name': instance.name,
      'birthday': instance.birthday,
      'height': instance.height,
      'weight': instance.weight,
      'interests': instance.interests,
    };
