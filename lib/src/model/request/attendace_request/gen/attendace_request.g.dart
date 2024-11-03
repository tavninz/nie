// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../attendace_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendaceRequestImpl _$$AttendaceRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendaceRequestImpl(
      userId: (json['userId'] as num?)?.toInt(),
      studentId: (json['studentId'] as num?)?.toInt(),
      qrId: (json['qrId'] as num?)?.toInt(),
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      deviceId: json['deviceId'] as String?,
    );

Map<String, dynamic> _$$AttendaceRequestImplToJson(
        _$AttendaceRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'studentId': instance.studentId,
      'qrId': instance.qrId,
      'lat': instance.lat,
      'lon': instance.lon,
      'deviceId': instance.deviceId,
    };
