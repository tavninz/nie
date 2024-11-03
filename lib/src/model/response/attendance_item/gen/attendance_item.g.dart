// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../attendance_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceItemImpl _$$AttendanceItemImplFromJson(Map<String, dynamic> json) =>
    _$AttendanceItemImpl(
      id: (json['id'] as num?)?.toInt(),
      deviceId: json['deviceId'],
      status: json['status'] as String?,
      shift: json['shift'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      student: (json['student'] as num?)?.toInt(),
      khmerName: json['khmerName'] as String?,
      latinName: json['latinName'] as String?,
      qrName: json['qrName'],
      grade: json['grade'] as String?,
    );

Map<String, dynamic> _$$AttendanceItemImplToJson(
        _$AttendanceItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'deviceId': instance.deviceId,
      'status': instance.status,
      'shift': instance.shift,
      'createdAt': instance.createdAt?.toIso8601String(),
      'student': instance.student,
      'khmerName': instance.khmerName,
      'latinName': instance.latinName,
      'qrName': instance.qrName,
      'grade': instance.grade,
    };
