// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../qr_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QrResponseImpl _$$QrResponseImplFromJson(Map<String, dynamic> json) =>
    _$QrResponseImpl(
      name: json['name'] as String?,
      lat1: json['lat1'] as String?,
      lon1: json['lon1'] as String?,
      lat2: json['lat2'] as String?,
      lon2: json['lon2'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$QrResponseImplToJson(_$QrResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat1': instance.lat1,
      'lon1': instance.lon1,
      'lat2': instance.lat2,
      'lon2': instance.lon2,
      'id': instance.id,
    };
