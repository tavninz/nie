// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserResponseImplAdapter extends TypeAdapter<_$UserResponseImpl> {
  @override
  final int typeId = 0;

  @override
  _$UserResponseImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UserResponseImpl(
      userId: fields[0] as int?,
      username: fields[1] as String?,
      isActive: fields[2] as int?,
      roleId: fields[3] as int?,
      createdAt: fields[4] as DateTime?,
      updatedAt: fields[5] as DateTime?,
      role: fields[6] as String?,
      token: fields[7] as String?,
      studentId: fields[8] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UserResponseImpl obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.userId)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.isActive)
      ..writeByte(3)
      ..write(obj.roleId)
      ..writeByte(4)
      ..write(obj.createdAt)
      ..writeByte(5)
      ..write(obj.updatedAt)
      ..writeByte(6)
      ..write(obj.role)
      ..writeByte(7)
      ..write(obj.token)
      ..writeByte(8)
      ..write(obj.studentId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserResponseImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      userId: (json['userId'] as num?)?.toInt(),
      username: json['username'] as String?,
      isActive: (json['isActive'] as num?)?.toInt(),
      roleId: (json['roleId'] as num?)?.toInt(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      role: json['role'] as String?,
      token: json['token'] as String?,
      studentId: (json['studentId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'isActive': instance.isActive,
      'roleId': instance.roleId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'role': instance.role,
      'token': instance.token,
      'studentId': instance.studentId,
    };
