// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../attendance_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceResponse _$AttendanceResponseFromJson(Map<String, dynamic> json) {
  return _AttendanceResponse.fromJson(json);
}

/// @nodoc
mixin _$AttendanceResponse {
  List<AttendanceItem>? get data => throw _privateConstructorUsedError;
  set data(List<AttendanceItem>? value) => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;
  set total(int? value) => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  set message(String? value) => throw _privateConstructorUsedError;
  StatusCount? get statusCount => throw _privateConstructorUsedError;
  set statusCount(StatusCount? value) => throw _privateConstructorUsedError;

  /// Serializes this AttendanceResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceResponseCopyWith<AttendanceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceResponseCopyWith<$Res> {
  factory $AttendanceResponseCopyWith(
          AttendanceResponse value, $Res Function(AttendanceResponse) then) =
      _$AttendanceResponseCopyWithImpl<$Res, AttendanceResponse>;
  @useResult
  $Res call(
      {List<AttendanceItem>? data,
      int? total,
      String? message,
      StatusCount? statusCount});

  $StatusCountCopyWith<$Res>? get statusCount;
}

/// @nodoc
class _$AttendanceResponseCopyWithImpl<$Res, $Val extends AttendanceResponse>
    implements $AttendanceResponseCopyWith<$Res> {
  _$AttendanceResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? message = freezed,
    Object? statusCount = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AttendanceItem>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCount: freezed == statusCount
          ? _value.statusCount
          : statusCount // ignore: cast_nullable_to_non_nullable
              as StatusCount?,
    ) as $Val);
  }

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StatusCountCopyWith<$Res>? get statusCount {
    if (_value.statusCount == null) {
      return null;
    }

    return $StatusCountCopyWith<$Res>(_value.statusCount!, (value) {
      return _then(_value.copyWith(statusCount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttendanceResponseImplCopyWith<$Res>
    implements $AttendanceResponseCopyWith<$Res> {
  factory _$$AttendanceResponseImplCopyWith(_$AttendanceResponseImpl value,
          $Res Function(_$AttendanceResponseImpl) then) =
      __$$AttendanceResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AttendanceItem>? data,
      int? total,
      String? message,
      StatusCount? statusCount});

  @override
  $StatusCountCopyWith<$Res>? get statusCount;
}

/// @nodoc
class __$$AttendanceResponseImplCopyWithImpl<$Res>
    extends _$AttendanceResponseCopyWithImpl<$Res, _$AttendanceResponseImpl>
    implements _$$AttendanceResponseImplCopyWith<$Res> {
  __$$AttendanceResponseImplCopyWithImpl(_$AttendanceResponseImpl _value,
      $Res Function(_$AttendanceResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
    Object? message = freezed,
    Object? statusCount = freezed,
  }) {
    return _then(_$AttendanceResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<AttendanceItem>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      statusCount: freezed == statusCount
          ? _value.statusCount
          : statusCount // ignore: cast_nullable_to_non_nullable
              as StatusCount?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$AttendanceResponseImpl implements _AttendanceResponse {
  _$AttendanceResponseImpl(
      {this.data, this.total, this.message, this.statusCount});

  factory _$AttendanceResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceResponseImplFromJson(json);

  @override
  List<AttendanceItem>? data;
  @override
  int? total;
  @override
  String? message;
  @override
  StatusCount? statusCount;

  @override
  String toString() {
    return 'AttendanceResponse(data: $data, total: $total, message: $message, statusCount: $statusCount)';
  }

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceResponseImplCopyWith<_$AttendanceResponseImpl> get copyWith =>
      __$$AttendanceResponseImplCopyWithImpl<_$AttendanceResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceResponseImplToJson(
      this,
    );
  }
}

abstract class _AttendanceResponse implements AttendanceResponse {
  factory _AttendanceResponse(
      {List<AttendanceItem>? data,
      int? total,
      String? message,
      StatusCount? statusCount}) = _$AttendanceResponseImpl;

  factory _AttendanceResponse.fromJson(Map<String, dynamic> json) =
      _$AttendanceResponseImpl.fromJson;

  @override
  List<AttendanceItem>? get data;
  set data(List<AttendanceItem>? value);
  @override
  int? get total;
  set total(int? value);
  @override
  String? get message;
  set message(String? value);
  @override
  StatusCount? get statusCount;
  set statusCount(StatusCount? value);

  /// Create a copy of AttendanceResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceResponseImplCopyWith<_$AttendanceResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
