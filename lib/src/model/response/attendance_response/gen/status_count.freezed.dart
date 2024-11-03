// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../status_count.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StatusCount _$StatusCountFromJson(Map<String, dynamic> json) {
  return _StatusCount.fromJson(json);
}

/// @nodoc
mixin _$StatusCount {
  @JsonKey(name: 'A')
  double? get a => throw _privateConstructorUsedError;
  @JsonKey(name: 'A')
  set a(double? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'P')
  int? get p => throw _privateConstructorUsedError;
  @JsonKey(name: 'P')
  set p(int? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'INOUT')
  double? get inout => throw _privateConstructorUsedError;
  @JsonKey(name: 'INOUT')
  set inout(double? value) => throw _privateConstructorUsedError;

  /// Serializes this StatusCount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StatusCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusCountCopyWith<StatusCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusCountCopyWith<$Res> {
  factory $StatusCountCopyWith(
          StatusCount value, $Res Function(StatusCount) then) =
      _$StatusCountCopyWithImpl<$Res, StatusCount>;
  @useResult
  $Res call(
      {@JsonKey(name: 'A') double? a,
      @JsonKey(name: 'P') int? p,
      @JsonKey(name: 'INOUT') double? inout});
}

/// @nodoc
class _$StatusCountCopyWithImpl<$Res, $Val extends StatusCount>
    implements $StatusCountCopyWith<$Res> {
  _$StatusCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatusCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = freezed,
    Object? p = freezed,
    Object? inout = freezed,
  }) {
    return _then(_value.copyWith(
      a: freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as double?,
      p: freezed == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as int?,
      inout: freezed == inout
          ? _value.inout
          : inout // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusCountImplCopyWith<$Res>
    implements $StatusCountCopyWith<$Res> {
  factory _$$StatusCountImplCopyWith(
          _$StatusCountImpl value, $Res Function(_$StatusCountImpl) then) =
      __$$StatusCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'A') double? a,
      @JsonKey(name: 'P') int? p,
      @JsonKey(name: 'INOUT') double? inout});
}

/// @nodoc
class __$$StatusCountImplCopyWithImpl<$Res>
    extends _$StatusCountCopyWithImpl<$Res, _$StatusCountImpl>
    implements _$$StatusCountImplCopyWith<$Res> {
  __$$StatusCountImplCopyWithImpl(
      _$StatusCountImpl _value, $Res Function(_$StatusCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatusCount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = freezed,
    Object? p = freezed,
    Object? inout = freezed,
  }) {
    return _then(_$StatusCountImpl(
      a: freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as double?,
      p: freezed == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as int?,
      inout: freezed == inout
          ? _value.inout
          : inout // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$StatusCountImpl implements _StatusCount {
  _$StatusCountImpl(
      {@JsonKey(name: 'A') this.a,
      @JsonKey(name: 'P') this.p,
      @JsonKey(name: 'INOUT') this.inout});

  factory _$StatusCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusCountImplFromJson(json);

  @override
  @JsonKey(name: 'A')
  double? a;
  @override
  @JsonKey(name: 'P')
  int? p;
  @override
  @JsonKey(name: 'INOUT')
  double? inout;

  @override
  String toString() {
    return 'StatusCount(a: $a, p: $p, inout: $inout)';
  }

  /// Create a copy of StatusCount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusCountImplCopyWith<_$StatusCountImpl> get copyWith =>
      __$$StatusCountImplCopyWithImpl<_$StatusCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusCountImplToJson(
      this,
    );
  }
}

abstract class _StatusCount implements StatusCount {
  factory _StatusCount(
      {@JsonKey(name: 'A') double? a,
      @JsonKey(name: 'P') int? p,
      @JsonKey(name: 'INOUT') double? inout}) = _$StatusCountImpl;

  factory _StatusCount.fromJson(Map<String, dynamic> json) =
      _$StatusCountImpl.fromJson;

  @override
  @JsonKey(name: 'A')
  double? get a;
  @JsonKey(name: 'A')
  set a(double? value);
  @override
  @JsonKey(name: 'P')
  int? get p;
  @JsonKey(name: 'P')
  set p(int? value);
  @override
  @JsonKey(name: 'INOUT')
  double? get inout;
  @JsonKey(name: 'INOUT')
  set inout(double? value);

  /// Create a copy of StatusCount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusCountImplCopyWith<_$StatusCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
