// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserApiModel _$UserApiModelFromJson(Map<String, dynamic> json) {
  return _UserApiModel.fromJson(json);
}

/// @nodoc
mixin _$UserApiModel {
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "birthday")
  String? get birthday => throw _privateConstructorUsedError;
  @JsonKey(name: "height")
  String? get height => throw _privateConstructorUsedError;
  @JsonKey(name: "weight")
  String? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: "interests")
  List<String>? get interests => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserApiModelCopyWith<UserApiModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserApiModelCopyWith<$Res> {
  factory $UserApiModelCopyWith(
          UserApiModel value, $Res Function(UserApiModel) then) =
      _$UserApiModelCopyWithImpl<$Res, UserApiModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "birthday") String? birthday,
      @JsonKey(name: "height") String? height,
      @JsonKey(name: "weight") String? weight,
      @JsonKey(name: "interests") List<String>? interests});
}

/// @nodoc
class _$UserApiModelCopyWithImpl<$Res, $Val extends UserApiModel>
    implements $UserApiModelCopyWith<$Res> {
  _$UserApiModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? interests = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserApiModelImplCopyWith<$Res>
    implements $UserApiModelCopyWith<$Res> {
  factory _$$UserApiModelImplCopyWith(
          _$UserApiModelImpl value, $Res Function(_$UserApiModelImpl) then) =
      __$$UserApiModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "email") String? email,
      @JsonKey(name: "username") String? username,
      @JsonKey(name: "password") String? password,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "birthday") String? birthday,
      @JsonKey(name: "height") String? height,
      @JsonKey(name: "weight") String? weight,
      @JsonKey(name: "interests") List<String>? interests});
}

/// @nodoc
class __$$UserApiModelImplCopyWithImpl<$Res>
    extends _$UserApiModelCopyWithImpl<$Res, _$UserApiModelImpl>
    implements _$$UserApiModelImplCopyWith<$Res> {
  __$$UserApiModelImplCopyWithImpl(
      _$UserApiModelImpl _value, $Res Function(_$UserApiModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? name = freezed,
    Object? birthday = freezed,
    Object? height = freezed,
    Object? weight = freezed,
    Object? interests = freezed,
  }) {
    return _then(_$UserApiModelImpl(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      interests: freezed == interests
          ? _value._interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserApiModelImpl extends _UserApiModel {
  const _$UserApiModelImpl(
      {@JsonKey(name: "email") this.email,
      @JsonKey(name: "username") this.username,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "name") this.name,
      @JsonKey(name: "birthday") this.birthday,
      @JsonKey(name: "height") this.height,
      @JsonKey(name: "weight") this.weight,
      @JsonKey(name: "interests") final List<String>? interests})
      : _interests = interests,
        super._();

  factory _$UserApiModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserApiModelImplFromJson(json);

  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "username")
  final String? username;
  @override
  @JsonKey(name: "password")
  final String? password;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "birthday")
  final String? birthday;
  @override
  @JsonKey(name: "height")
  final String? height;
  @override
  @JsonKey(name: "weight")
  final String? weight;
  final List<String>? _interests;
  @override
  @JsonKey(name: "interests")
  List<String>? get interests {
    final value = _interests;
    if (value == null) return null;
    if (_interests is EqualUnmodifiableListView) return _interests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserApiModel(email: $email, username: $username, password: $password, name: $name, birthday: $birthday, height: $height, weight: $weight, interests: $interests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserApiModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality()
                .equals(other._interests, _interests));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      username,
      password,
      name,
      birthday,
      height,
      weight,
      const DeepCollectionEquality().hash(_interests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserApiModelImplCopyWith<_$UserApiModelImpl> get copyWith =>
      __$$UserApiModelImplCopyWithImpl<_$UserApiModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserApiModelImplToJson(
      this,
    );
  }
}

abstract class _UserApiModel extends UserApiModel {
  const factory _UserApiModel(
          {@JsonKey(name: "email") final String? email,
          @JsonKey(name: "username") final String? username,
          @JsonKey(name: "password") final String? password,
          @JsonKey(name: "name") final String? name,
          @JsonKey(name: "birthday") final String? birthday,
          @JsonKey(name: "height") final String? height,
          @JsonKey(name: "weight") final String? weight,
          @JsonKey(name: "interests") final List<String>? interests}) =
      _$UserApiModelImpl;
  const _UserApiModel._() : super._();

  factory _UserApiModel.fromJson(Map<String, dynamic> json) =
      _$UserApiModelImpl.fromJson;

  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "username")
  String? get username;
  @override
  @JsonKey(name: "password")
  String? get password;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "birthday")
  String? get birthday;
  @override
  @JsonKey(name: "height")
  String? get height;
  @override
  @JsonKey(name: "weight")
  String? get weight;
  @override
  @JsonKey(name: "interests")
  List<String>? get interests;
  @override
  @JsonKey(ignore: true)
  _$$UserApiModelImplCopyWith<_$UserApiModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
