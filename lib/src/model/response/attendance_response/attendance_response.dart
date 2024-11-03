
import 'package:freezed_annotation/freezed_annotation.dart';

import '../attendance_item/attendance_item.dart';
import 'status_count.dart';

part 'gen/attendance_response.freezed.dart';

part 'gen/attendance_response.g.dart';

@unfreezed
class AttendanceResponse with _$AttendanceResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory AttendanceResponse({
    List<AttendanceItem>? data,
    int? total,
    String? message,
    StatusCount? statusCount,
  }) = _AttendanceResponse;

  factory AttendanceResponse.fromJson(Map<String, dynamic> json) =>
      _$AttendanceResponseFromJson(json);
}
