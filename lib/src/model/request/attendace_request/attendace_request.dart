import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/attendace_request.freezed.dart';

part 'gen/attendace_request.g.dart';

@unfreezed
class AttendaceRequest with _$AttendaceRequest {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory AttendaceRequest({
    int? userId,
    int? studentId,
    int? qrId,
    double? lat,
    double? lon,
    String? deviceId,
  }) = _AttendaceRequest;

  factory AttendaceRequest.fromJson(Map<String, dynamic> json) =>
      _$AttendaceRequestFromJson(json);
}
