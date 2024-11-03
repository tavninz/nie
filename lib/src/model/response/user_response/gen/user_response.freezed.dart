// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  @HiveField(0)
  int? get userId => throw _privateConstructorUsedError;
  @HiveField(0)
  set userId(int? value) => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get username => throw _privateConstructorUsedError;
  @HiveField(1)
  set username(String? value) => throw _privateConstructorUsedError;
  @HiveField(2)
  int? get isActive => throw _privateConstructorUsedError;
  @HiveField(2)
  set isActive(int? value) => throw _privateConstructorUsedError;
  @HiveField(3)
  int? get roleId => throw _privateConstructorUsedError;
  @HiveField(3)
  set roleId(int? value) => throw _privateConstructorUsedError;
  @HiveField(4)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @HiveField(4)
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(5)
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @HiveField(5)
  set updatedAt(DateTime? value) => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get role => throw _privateConstructorUsedError;
  @HiveField(6)
  set role(String? value) => throw _privateConstructorUsedError;
  @HiveField(7)
  String? get token => throw _privateConstructorUsedError;
  @HiveField(7)
  set token(String? value) => throw _privateConstructorUsedError;
  @HiveField(8)
  int? get studentId => throw _privateConstructorUsedError;
  @HiveField(8)
  set studentId(int? value) => throw _privateConstructorUsedError;

  /// Serializes this UserResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call(
      {@HiveField(0) int? userId,
      @HiveField(1) String? username,
      @HiveField(2) int? isActive,
      @HiveField(3) int? roleId,
      @HiveField(4) DateTime? createdAt,
      @HiveField(5) DateTime? updatedAt,
      @HiveField(6) String? role,
      @HiveField(7) String? token,
      @HiveField(8) int? studentId});
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? isActive = freezed,
    Object? roleId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? role = freezed,
    Object? token = freezed,
    Object? studentId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserResponseImplCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseImplCopyWith(
          _$UserResponseImpl value, $Res Function(_$UserResponseImpl) then) =
      __$$UserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? userId,
      @HiveField(1) String? username,
      @HiveField(2) int? isActive,
      @HiveField(3) int? roleId,
      @HiveField(4) DateTime? createdAt,
      @HiveField(5) DateTime? updatedAt,
      @HiveField(6) String? role,
      @HiveField(7) String? token,
      @HiveField(8) int? studentId});
}

/// @nodoc
class __$$UserResponseImplCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$UserResponseImpl>
    implements _$$UserResponseImplCopyWith<$Res> {
  __$$UserResponseImplCopyWithImpl(
      _$UserResponseImpl _value, $Res Function(_$UserResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? username = freezed,
    Object? isActive = freezed,
    Object? roleId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? role = freezed,
    Object? token = freezed,
    Object? studentId = freezed,
  }) {
    return _then(_$UserResponseImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int?,
      roleId: freezed == roleId
          ? _value.roleId
          : roleId // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
@HiveType(typeId: 0)
class _$UserResponseImpl implements _UserResponse {
  _$UserResponseImpl(
      {@HiveField(0) this.userId,
      @HiveField(1) this.username,
      @HiveField(2) this.isActive,
      @HiveField(3) this.roleId,
      @HiveField(4) this.createdAt,
      @HiveField(5) this.updatedAt,
      @HiveField(6) this.role,
      @HiveField(7) this.token,
      @HiveField(8) this.studentId});

  factory _$UserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseImplFromJson(json);

  @override
  @HiveField(0)
  int? userId;
  @override
  @HiveField(1)
  String? username;
  @override
  @HiveField(2)
  int? isActive;
  @override
  @HiveField(3)
  int? roleId;
  @override
  @HiveField(4)
  DateTime? createdAt;
  @override
  @HiveField(5)
  DateTime? updatedAt;
  @override
  @HiveField(6)
  String? role;
  @override
  @HiveField(7)
  String? token;
  @override
  @HiveField(8)
  int? studentId;

  @override
  String toString() {
    return 'UserResponse(userId: $userId, username: $username, isActive: $isActive, roleId: $roleId, createdAt: $createdAt, updatedAt: $updatedAt, role: $role, token: $token, studentId: $studentId)';
  }

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      __$$UserResponseImplCopyWithImpl<_$UserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseImplToJson(
      this,
    );
  }
}

abstract class _UserResponse implements UserResponse {
  factory _UserResponse(
      {@HiveField(0) int? userId,
      @HiveField(1) String? username,
      @HiveField(2) int? isActive,
      @HiveField(3) int? roleId,
      @HiveField(4) DateTime? createdAt,
      @HiveField(5) DateTime? updatedAt,
      @HiveField(6) String? role,
      @HiveField(7) String? token,
      @HiveField(8) int? studentId}) = _$UserResponseImpl;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$UserResponseImpl.fromJson;

  @override
  @HiveField(0)
  int? get userId;
  @HiveField(0)
  set userId(int? value);
  @override
  @HiveField(1)
  String? get username;
  @HiveField(1)
  set username(String? value);
  @override
  @HiveField(2)
  int? get isActive;
  @HiveField(2)
  set isActive(int? value);
  @override
  @HiveField(3)
  int? get roleId;
  @HiveField(3)
  set roleId(int? value);
  @override
  @HiveField(4)
  DateTime? get createdAt;
  @HiveField(4)
  set createdAt(DateTime? value);
  @override
  @HiveField(5)
  DateTime? get updatedAt;
  @HiveField(5)
  set updatedAt(DateTime? value);
  @override
  @HiveField(6)
  String? get role;
  @HiveField(6)
  set role(String? value);
  @override
  @HiveField(7)
  String? get token;
  @HiveField(7)
  set token(String? value);
  @override
  @HiveField(8)
  int? get studentId;
  @HiveField(8)
  set studentId(int? value);

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
