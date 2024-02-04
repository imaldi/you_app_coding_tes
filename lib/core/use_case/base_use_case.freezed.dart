// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_use_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoParams {}

/// @nodoc
abstract class $NoParamsCopyWith<$Res> {
  factory $NoParamsCopyWith(NoParams value, $Res Function(NoParams) then) =
      _$NoParamsCopyWithImpl<$Res, NoParams>;
}

/// @nodoc
class _$NoParamsCopyWithImpl<$Res, $Val extends NoParams>
    implements $NoParamsCopyWith<$Res> {
  _$NoParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoParamsImplCopyWith<$Res> {
  factory _$$NoParamsImplCopyWith(
          _$NoParamsImpl value, $Res Function(_$NoParamsImpl) then) =
      __$$NoParamsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoParamsImplCopyWithImpl<$Res>
    extends _$NoParamsCopyWithImpl<$Res, _$NoParamsImpl>
    implements _$$NoParamsImplCopyWith<$Res> {
  __$$NoParamsImplCopyWithImpl(
      _$NoParamsImpl _value, $Res Function(_$NoParamsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoParamsImpl implements _NoParams {
  const _$NoParamsImpl();

  @override
  String toString() {
    return 'NoParams()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoParamsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _NoParams implements NoParams {
  const factory _NoParams() = _$NoParamsImpl;
}

UserLoginParams _$UserLoginParamsFromJson(Map<String, dynamic> json) {
  return _UserLoginParams.fromJson(json);
}

/// @nodoc
mixin _$UserLoginParams {
  String get email => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLoginParamsCopyWith<UserLoginParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginParamsCopyWith<$Res> {
  factory $UserLoginParamsCopyWith(
          UserLoginParams value, $Res Function(UserLoginParams) then) =
      _$UserLoginParamsCopyWithImpl<$Res, UserLoginParams>;
  @useResult
  $Res call({String email, String username, String password});
}

/// @nodoc
class _$UserLoginParamsCopyWithImpl<$Res, $Val extends UserLoginParams>
    implements $UserLoginParamsCopyWith<$Res> {
  _$UserLoginParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLoginParamsImplCopyWith<$Res>
    implements $UserLoginParamsCopyWith<$Res> {
  factory _$$UserLoginParamsImplCopyWith(_$UserLoginParamsImpl value,
          $Res Function(_$UserLoginParamsImpl) then) =
      __$$UserLoginParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String username, String password});
}

/// @nodoc
class __$$UserLoginParamsImplCopyWithImpl<$Res>
    extends _$UserLoginParamsCopyWithImpl<$Res, _$UserLoginParamsImpl>
    implements _$$UserLoginParamsImplCopyWith<$Res> {
  __$$UserLoginParamsImplCopyWithImpl(
      _$UserLoginParamsImpl _value, $Res Function(_$UserLoginParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$UserLoginParamsImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLoginParamsImpl implements _UserLoginParams {
  const _$UserLoginParamsImpl(
      {required this.email, required this.username, required this.password});

  factory _$UserLoginParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLoginParamsImplFromJson(json);

  @override
  final String email;
  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'UserLoginParams(email: $email, username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoginParamsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, username, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoginParamsImplCopyWith<_$UserLoginParamsImpl> get copyWith =>
      __$$UserLoginParamsImplCopyWithImpl<_$UserLoginParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLoginParamsImplToJson(
      this,
    );
  }
}

abstract class _UserLoginParams implements UserLoginParams {
  const factory _UserLoginParams(
      {required final String email,
      required final String username,
      required final String password}) = _$UserLoginParamsImpl;

  factory _UserLoginParams.fromJson(Map<String, dynamic> json) =
      _$UserLoginParamsImpl.fromJson;

  @override
  String get email;
  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$UserLoginParamsImplCopyWith<_$UserLoginParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
