// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../attendace_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendaceRequest _$AttendaceRequestFromJson(Map<String, dynamic> json) {
  return _AttendaceRequest.fromJson(json);
}

/// @nodoc
mixin _$AttendaceRequest {
  int? get userId => throw _privateConstructorUsedError;
  set userId(int? value) => throw _privateConstructorUsedError;
  int? get studentId => throw _privateConstructorUsedError;
  set studentId(int? value) => throw _privateConstructorUsedError;
  int? get qrId => throw _privateConstructorUsedError;
  set qrId(int? value) => throw _privateConstructorUsedError;
  double? get lat => throw _privateConstructorUsedError;
  set lat(double? value) => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;
  set lon(double? value) => throw _privateConstructorUsedError;
  String? get deviceId => throw _privateConstructorUsedError;
  set deviceId(String? value) => throw _privateConstructorUsedError;

  /// Serializes this AttendaceRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendaceRequestCopyWith<AttendaceRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendaceRequestCopyWith<$Res> {
  factory $AttendaceRequestCopyWith(
          AttendaceRequest value, $Res Function(AttendaceRequest) then) =
      _$AttendaceRequestCopyWithImpl<$Res, AttendaceRequest>;
  @useResult
  $Res call(
      {int? userId,
      int? studentId,
      int? qrId,
      double? lat,
      double? lon,
      String? deviceId});
}

/// @nodoc
class _$AttendaceRequestCopyWithImpl<$Res, $Val extends AttendaceRequest>
    implements $AttendaceRequestCopyWith<$Res> {
  _$AttendaceRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? studentId = freezed,
    Object? qrId = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      qrId: freezed == qrId
          ? _value.qrId
          : qrId // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendaceRequestImplCopyWith<$Res>
    implements $AttendaceRequestCopyWith<$Res> {
  factory _$$AttendaceRequestImplCopyWith(_$AttendaceRequestImpl value,
          $Res Function(_$AttendaceRequestImpl) then) =
      __$$AttendaceRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      int? studentId,
      int? qrId,
      double? lat,
      double? lon,
      String? deviceId});
}

/// @nodoc
class __$$AttendaceRequestImplCopyWithImpl<$Res>
    extends _$AttendaceRequestCopyWithImpl<$Res, _$AttendaceRequestImpl>
    implements _$$AttendaceRequestImplCopyWith<$Res> {
  __$$AttendaceRequestImplCopyWithImpl(_$AttendaceRequestImpl _value,
      $Res Function(_$AttendaceRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? studentId = freezed,
    Object? qrId = freezed,
    Object? lat = freezed,
    Object? lon = freezed,
    Object? deviceId = freezed,
  }) {
    return _then(_$AttendaceRequestImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int?,
      qrId: freezed == qrId
          ? _value.qrId
          : qrId // ignore: cast_nullable_to_non_nullable
              as int?,
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$AttendaceRequestImpl implements _AttendaceRequest {
  _$AttendaceRequestImpl(
      {this.userId,
      this.studentId,
      this.qrId,
      this.lat,
      this.lon,
      this.deviceId});

  factory _$AttendaceRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendaceRequestImplFromJson(json);

  @override
  int? userId;
  @override
  int? studentId;
  @override
  int? qrId;
  @override
  double? lat;
  @override
  double? lon;
  @override
  String? deviceId;

  @override
  String toString() {
    return 'AttendaceRequest(userId: $userId, studentId: $studentId, qrId: $qrId, lat: $lat, lon: $lon, deviceId: $deviceId)';
  }

  /// Create a copy of AttendaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendaceRequestImplCopyWith<_$AttendaceRequestImpl> get copyWith =>
      __$$AttendaceRequestImplCopyWithImpl<_$AttendaceRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendaceRequestImplToJson(
      this,
    );
  }
}

abstract class _AttendaceRequest implements AttendaceRequest {
  factory _AttendaceRequest(
      {int? userId,
      int? studentId,
      int? qrId,
      double? lat,
      double? lon,
      String? deviceId}) = _$AttendaceRequestImpl;

  factory _AttendaceRequest.fromJson(Map<String, dynamic> json) =
      _$AttendaceRequestImpl.fromJson;

  @override
  int? get userId;
  set userId(int? value);
  @override
  int? get studentId;
  set studentId(int? value);
  @override
  int? get qrId;
  set qrId(int? value);
  @override
  double? get lat;
  set lat(double? value);
  @override
  double? get lon;
  set lon(double? value);
  @override
  String? get deviceId;
  set deviceId(String? value);

  /// Create a copy of AttendaceRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendaceRequestImplCopyWith<_$AttendaceRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
