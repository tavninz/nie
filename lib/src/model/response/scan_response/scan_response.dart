
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/scan_response.freezed.dart';

part 'gen/scan_response.g.dart';

@unfreezed
class ScanResponse with _$ScanResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory ScanResponse({
    String? message,
  }) = _ScanResponse;

  factory ScanResponse.fromJson(Map<String, dynamic> json) =>
      _$ScanResponseFromJson(json);
}
