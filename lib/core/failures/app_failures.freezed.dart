// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiFailure _$ApiFailureFromJson(Map<String, dynamic> json) {
  return _ApiFailure.fromJson(json);
}

/// @nodoc
mixin _$ApiFailure {
  int? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Map<String, dynamic>? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiFailureCopyWith<ApiFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res, ApiFailure>;
  @useResult
  $Res call({int? statusCode, String? message, Map<String, dynamic>? errors});
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res, $Val extends ApiFailure>
    implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiFailureImplCopyWith<$Res>
    implements $ApiFailureCopyWith<$Res> {
  factory _$$ApiFailureImplCopyWith(
          _$ApiFailureImpl value, $Res Function(_$ApiFailureImpl) then) =
      __$$ApiFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? statusCode, String? message, Map<String, dynamic>? errors});
}

/// @nodoc
class __$$ApiFailureImplCopyWithImpl<$Res>
    extends _$ApiFailureCopyWithImpl<$Res, _$ApiFailureImpl>
    implements _$$ApiFailureImplCopyWith<$Res> {
  __$$ApiFailureImplCopyWithImpl(
      _$ApiFailureImpl _value, $Res Function(_$ApiFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$ApiFailureImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiFailureImpl implements _ApiFailure {
  const _$ApiFailureImpl(
      {this.statusCode, this.message, final Map<String, dynamic>? errors})
      : _errors = errors;

  factory _$ApiFailureImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiFailureImplFromJson(json);

  @override
  final int? statusCode;
  @override
  final String? message;
  final Map<String, dynamic>? _errors;
  @override
  Map<String, dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableMapView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiFailure(statusCode: $statusCode, message: $message, errors: $errors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiFailureImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiFailureImplCopyWith<_$ApiFailureImpl> get copyWith =>
      __$$ApiFailureImplCopyWithImpl<_$ApiFailureImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiFailureImplToJson(
      this,
    );
  }
}

abstract class _ApiFailure implements ApiFailure, AppFailure {
  const factory _ApiFailure(
      {final int? statusCode,
      final String? message,
      final Map<String, dynamic>? errors}) = _$ApiFailureImpl;

  factory _ApiFailure.fromJson(Map<String, dynamic> json) =
      _$ApiFailureImpl.fromJson;

  @override
  int? get statusCode;
  @override
  String? get message;
  @override
  Map<String, dynamic>? get errors;
  @override
  @JsonKey(ignore: true)
  _$$ApiFailureImplCopyWith<_$ApiFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
