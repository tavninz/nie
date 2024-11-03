// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../status_count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatusCountImpl _$$StatusCountImplFromJson(Map<String, dynamic> json) =>
    _$StatusCountImpl(
      a: (json['A'] as num?)?.toDouble(),
      p: (json['P'] as num?)?.toInt(),
      inout: (json['INOUT'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$StatusCountImplToJson(_$StatusCountImpl instance) =>
    <String, dynamic>{
      'A': instance.a,
      'P': instance.p,
      'INOUT': instance.inout,
    };
