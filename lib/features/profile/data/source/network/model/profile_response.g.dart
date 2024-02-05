// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AuthModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
