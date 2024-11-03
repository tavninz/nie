import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'gen/user_response.freezed.dart';

part 'gen/user_response.g.dart';

@unfreezed
class UserResponse with _$UserResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  @HiveType(typeId: 0)
  factory UserResponse({
    @HiveField(0) int? userId,
    @HiveField(1) String? username,
    @HiveField(2) int? isActive,
    @HiveField(3) int? roleId,
    @HiveField(4) DateTime? createdAt,
    @HiveField(5) DateTime? updatedAt,
    @HiveField(6) String? role,
    @HiveField(7) String? token,
    @HiveField(8) int? studentId,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}
