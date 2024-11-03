// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../attendance_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AttendanceItem _$AttendanceItemFromJson(Map<String, dynamic> json) {
  return _AttendanceItem.fromJson(json);
}

/// @nodoc
mixin _$AttendanceItem {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  dynamic get deviceId => throw _privateConstructorUsedError;
  set deviceId(dynamic value) => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  set status(String? value) => throw _privateConstructorUsedError;
  String? get shift => throw _privateConstructorUsedError;
  set shift(String? value) => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  set createdAt(DateTime? value) => throw _privateConstructorUsedError;
  int? get student => throw _privateConstructorUsedError;
  set student(int? value) => throw _privateConstructorUsedError;
  String? get khmerName => throw _privateConstructorUsedError;
  set khmerName(String? value) => throw _privateConstructorUsedError;
  String? get latinName => throw _privateConstructorUsedError;
  set latinName(String? value) => throw _privateConstructorUsedError;
  dynamic get qrName => throw _privateConstructorUsedError;
  set qrName(dynamic value) => throw _privateConstructorUsedError;
  String? get grade => throw _privateConstructorUsedError;
  set grade(String? value) => throw _privateConstructorUsedError;

  /// Serializes this AttendanceItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttendanceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttendanceItemCopyWith<AttendanceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceItemCopyWith<$Res> {
  factory $AttendanceItemCopyWith(
          AttendanceItem value, $Res Function(AttendanceItem) then) =
      _$AttendanceItemCopyWithImpl<$Res, AttendanceItem>;
  @useResult
  $Res call(
      {int? id,
      dynamic deviceId,
      String? status,
      String? shift,
      DateTime? createdAt,
      int? student,
      String? khmerName,
      String? latinName,
      dynamic qrName,
      String? grade});
}

/// @nodoc
class _$AttendanceItemCopyWithImpl<$Res, $Val extends AttendanceItem>
    implements $AttendanceItemCopyWith<$Res> {
  _$AttendanceItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttendanceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceId = freezed,
    Object? status = freezed,
    Object? shift = freezed,
    Object? createdAt = freezed,
    Object? student = freezed,
    Object? khmerName = freezed,
    Object? latinName = freezed,
    Object? qrName = freezed,
    Object? grade = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as int?,
      khmerName: freezed == khmerName
          ? _value.khmerName
          : khmerName // ignore: cast_nullable_to_non_nullable
              as String?,
      latinName: freezed == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String?,
      qrName: freezed == qrName
          ? _value.qrName
          : qrName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendanceItemImplCopyWith<$Res>
    implements $AttendanceItemCopyWith<$Res> {
  factory _$$AttendanceItemImplCopyWith(_$AttendanceItemImpl value,
          $Res Function(_$AttendanceItemImpl) then) =
      __$$AttendanceItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      dynamic deviceId,
      String? status,
      String? shift,
      DateTime? createdAt,
      int? student,
      String? khmerName,
      String? latinName,
      dynamic qrName,
      String? grade});
}

/// @nodoc
class __$$AttendanceItemImplCopyWithImpl<$Res>
    extends _$AttendanceItemCopyWithImpl<$Res, _$AttendanceItemImpl>
    implements _$$AttendanceItemImplCopyWith<$Res> {
  __$$AttendanceItemImplCopyWithImpl(
      _$AttendanceItemImpl _value, $Res Function(_$AttendanceItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttendanceItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? deviceId = freezed,
    Object? status = freezed,
    Object? shift = freezed,
    Object? createdAt = freezed,
    Object? student = freezed,
    Object? khmerName = freezed,
    Object? latinName = freezed,
    Object? qrName = freezed,
    Object? grade = freezed,
  }) {
    return _then(_$AttendanceItemImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      deviceId: freezed == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      shift: freezed == shift
          ? _value.shift
          : shift // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      student: freezed == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as int?,
      khmerName: freezed == khmerName
          ? _value.khmerName
          : khmerName // ignore: cast_nullable_to_non_nullable
              as String?,
      latinName: freezed == latinName
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String?,
      qrName: freezed == qrName
          ? _value.qrName
          : qrName // ignore: cast_nullable_to_non_nullable
              as dynamic,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$AttendanceItemImpl implements _AttendanceItem {
  _$AttendanceItemImpl(
      {this.id,
      this.deviceId,
      this.status,
      this.shift,
      this.createdAt,
      this.student,
      this.khmerName,
      this.latinName,
      this.qrName,
      this.grade});

  factory _$AttendanceItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendanceItemImplFromJson(json);

  @override
  int? id;
  @override
  dynamic deviceId;
  @override
  String? status;
  @override
  String? shift;
  @override
  DateTime? createdAt;
  @override
  int? student;
  @override
  String? khmerName;
  @override
  String? latinName;
  @override
  dynamic qrName;
  @override
  String? grade;

  @override
  String toString() {
    return 'AttendanceItem(id: $id, deviceId: $deviceId, status: $status, shift: $shift, createdAt: $createdAt, student: $student, khmerName: $khmerName, latinName: $latinName, qrName: $qrName, grade: $grade)';
  }

  /// Create a copy of AttendanceItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendanceItemImplCopyWith<_$AttendanceItemImpl> get copyWith =>
      __$$AttendanceItemImplCopyWithImpl<_$AttendanceItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendanceItemImplToJson(
      this,
    );
  }
}

abstract class _AttendanceItem implements AttendanceItem {
  factory _AttendanceItem(
      {int? id,
      dynamic deviceId,
      String? status,
      String? shift,
      DateTime? createdAt,
      int? student,
      String? khmerName,
      String? latinName,
      dynamic qrName,
      String? grade}) = _$AttendanceItemImpl;

  factory _AttendanceItem.fromJson(Map<String, dynamic> json) =
      _$AttendanceItemImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  dynamic get deviceId;
  set deviceId(dynamic value);
  @override
  String? get status;
  set status(String? value);
  @override
  String? get shift;
  set shift(String? value);
  @override
  DateTime? get createdAt;
  set createdAt(DateTime? value);
  @override
  int? get student;
  set student(int? value);
  @override
  String? get khmerName;
  set khmerName(String? value);
  @override
  String? get latinName;
  set latinName(String? value);
  @override
  dynamic get qrName;
  set qrName(dynamic value);
  @override
  String? get grade;
  set grade(String? value);

  /// Create a copy of AttendanceItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttendanceItemImplCopyWith<_$AttendanceItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
