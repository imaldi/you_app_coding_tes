// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiErrorImpl _$$ApiErrorImplFromJson(Map<String, dynamic> json) =>
    _$ApiErrorImpl(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      errors: json['errors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ApiErrorImplToJson(_$ApiErrorImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'errors': instance.errors,
    };
