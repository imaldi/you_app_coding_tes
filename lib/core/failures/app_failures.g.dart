// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_failures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiFailureImpl _$$ApiFailureImplFromJson(Map<String, dynamic> json) =>
    _$ApiFailureImpl(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      errors: json['errors'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$ApiFailureImplToJson(_$ApiFailureImpl instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'errors': instance.errors,
    };
