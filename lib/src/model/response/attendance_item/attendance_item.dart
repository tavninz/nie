import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/attendance_item.freezed.dart';

part 'gen/attendance_item.g.dart';

@unfreezed
class AttendanceItem with _$AttendanceItem {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory AttendanceItem({
    int? id,
    dynamic deviceId,
    String? status,
    String? shift,
    DateTime? createdAt,
    int? student,
    String? khmerName,
    String? latinName,
    dynamic qrName,
    String? grade,
  }) = _AttendanceItem;

  factory AttendanceItem.fromJson(Map<String, dynamic> json) =>
      _$AttendanceItemFromJson(json);
}
