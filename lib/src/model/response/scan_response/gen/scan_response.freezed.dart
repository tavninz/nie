// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../scan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScanResponse _$ScanResponseFromJson(Map<String, dynamic> json) {
  return _ScanResponse.fromJson(json);
}

/// @nodoc
mixin _$ScanResponse {
  String? get message => throw _privateConstructorUsedError;
  set message(String? value) => throw _privateConstructorUsedError;

  /// Serializes this ScanResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScanResponseCopyWith<ScanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScanResponseCopyWith<$Res> {
  factory $ScanResponseCopyWith(
          ScanResponse value, $Res Function(ScanResponse) then) =
      _$ScanResponseCopyWithImpl<$Res, ScanResponse>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ScanResponseCopyWithImpl<$Res, $Val extends ScanResponse>
    implements $ScanResponseCopyWith<$Res> {
  _$ScanResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScanResponseImplCopyWith<$Res>
    implements $ScanResponseCopyWith<$Res> {
  factory _$$ScanResponseImplCopyWith(
          _$ScanResponseImpl value, $Res Function(_$ScanResponseImpl) then) =
      __$$ScanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ScanResponseImplCopyWithImpl<$Res>
    extends _$ScanResponseCopyWithImpl<$Res, _$ScanResponseImpl>
    implements _$$ScanResponseImplCopyWith<$Res> {
  __$$ScanResponseImplCopyWithImpl(
      _$ScanResponseImpl _value, $Res Function(_$ScanResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScanResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ScanResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$ScanResponseImpl implements _ScanResponse {
  _$ScanResponseImpl({this.message});

  factory _$ScanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScanResponseImplFromJson(json);

  @override
  String? message;

  @override
  String toString() {
    return 'ScanResponse(message: $message)';
  }

  /// Create a copy of ScanResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScanResponseImplCopyWith<_$ScanResponseImpl> get copyWith =>
      __$$ScanResponseImplCopyWithImpl<_$ScanResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScanResponseImplToJson(
      this,
    );
  }
}

abstract class _ScanResponse implements ScanResponse {
  factory _ScanResponse({String? message}) = _$ScanResponseImpl;

  factory _ScanResponse.fromJson(Map<String, dynamic> json) =
      _$ScanResponseImpl.fromJson;

  @override
  String? get message;
  set message(String? value);

  /// Create a copy of ScanResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScanResponseImplCopyWith<_$ScanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
