// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../attendance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AttendanceResponseImpl _$$AttendanceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AttendanceResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AttendanceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num?)?.toInt(),
      message: json['message'] as String?,
      statusCount: json['statusCount'] == null
          ? null
          : StatusCount.fromJson(json['statusCount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AttendanceResponseImplToJson(
        _$AttendanceResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'total': instance.total,
      'message': instance.message,
      'statusCount': instance.statusCount?.toJson(),
    };
