// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../qr_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QrResponse _$QrResponseFromJson(Map<String, dynamic> json) {
  return _QrResponse.fromJson(json);
}

/// @nodoc
mixin _$QrResponse {
  String? get name => throw _privateConstructorUsedError;
  String? get lat1 => throw _privateConstructorUsedError;
  String? get lon1 => throw _privateConstructorUsedError;
  String? get lat2 => throw _privateConstructorUsedError;
  String? get lon2 => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  /// Serializes this QrResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QrResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QrResponseCopyWith<QrResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrResponseCopyWith<$Res> {
  factory $QrResponseCopyWith(
          QrResponse value, $Res Function(QrResponse) then) =
      _$QrResponseCopyWithImpl<$Res, QrResponse>;
  @useResult
  $Res call(
      {String? name,
      String? lat1,
      String? lon1,
      String? lat2,
      String? lon2,
      int? id});
}

/// @nodoc
class _$QrResponseCopyWithImpl<$Res, $Val extends QrResponse>
    implements $QrResponseCopyWith<$Res> {
  _$QrResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QrResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lat1 = freezed,
    Object? lon1 = freezed,
    Object? lat2 = freezed,
    Object? lon2 = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lat1: freezed == lat1
          ? _value.lat1
          : lat1 // ignore: cast_nullable_to_non_nullable
              as String?,
      lon1: freezed == lon1
          ? _value.lon1
          : lon1 // ignore: cast_nullable_to_non_nullable
              as String?,
      lat2: freezed == lat2
          ? _value.lat2
          : lat2 // ignore: cast_nullable_to_non_nullable
              as String?,
      lon2: freezed == lon2
          ? _value.lon2
          : lon2 // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QrResponseImplCopyWith<$Res>
    implements $QrResponseCopyWith<$Res> {
  factory _$$QrResponseImplCopyWith(
          _$QrResponseImpl value, $Res Function(_$QrResponseImpl) then) =
      __$$QrResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? lat1,
      String? lon1,
      String? lat2,
      String? lon2,
      int? id});
}

/// @nodoc
class __$$QrResponseImplCopyWithImpl<$Res>
    extends _$QrResponseCopyWithImpl<$Res, _$QrResponseImpl>
    implements _$$QrResponseImplCopyWith<$Res> {
  __$$QrResponseImplCopyWithImpl(
      _$QrResponseImpl _value, $Res Function(_$QrResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of QrResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? lat1 = freezed,
    Object? lon1 = freezed,
    Object? lat2 = freezed,
    Object? lon2 = freezed,
    Object? id = freezed,
  }) {
    return _then(_$QrResponseImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lat1: freezed == lat1
          ? _value.lat1
          : lat1 // ignore: cast_nullable_to_non_nullable
              as String?,
      lon1: freezed == lon1
          ? _value.lon1
          : lon1 // ignore: cast_nullable_to_non_nullable
              as String?,
      lat2: freezed == lat2
          ? _value.lat2
          : lat2 // ignore: cast_nullable_to_non_nullable
              as String?,
      lon2: freezed == lon2
          ? _value.lon2
          : lon2 // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QrResponseImpl implements _QrResponse {
  _$QrResponseImpl(
      {this.name, this.lat1, this.lon1, this.lat2, this.lon2, this.id});

  factory _$QrResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$QrResponseImplFromJson(json);

  @override
  final String? name;
  @override
  final String? lat1;
  @override
  final String? lon1;
  @override
  final String? lat2;
  @override
  final String? lon2;
  @override
  final int? id;

  @override
  String toString() {
    return 'QrResponse(name: $name, lat1: $lat1, lon1: $lon1, lat2: $lat2, lon2: $lon2, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lat1, lat1) || other.lat1 == lat1) &&
            (identical(other.lon1, lon1) || other.lon1 == lon1) &&
            (identical(other.lat2, lat2) || other.lat2 == lat2) &&
            (identical(other.lon2, lon2) || other.lon2 == lon2) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, lat1, lon1, lat2, lon2, id);

  /// Create a copy of QrResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QrResponseImplCopyWith<_$QrResponseImpl> get copyWith =>
      __$$QrResponseImplCopyWithImpl<_$QrResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QrResponseImplToJson(
      this,
    );
  }
}

abstract class _QrResponse implements QrResponse {
  factory _QrResponse(
      {final String? name,
      final String? lat1,
      final String? lon1,
      final String? lat2,
      final String? lon2,
      final int? id}) = _$QrResponseImpl;

  factory _QrResponse.fromJson(Map<String, dynamic> json) =
      _$QrResponseImpl.fromJson;

  @override
  String? get name;
  @override
  String? get lat1;
  @override
  String? get lon1;
  @override
  String? get lat2;
  @override
  String? get lon2;
  @override
  int? get id;

  /// Create a copy of QrResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QrResponseImplCopyWith<_$QrResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
