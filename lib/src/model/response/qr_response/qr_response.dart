import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/qr_response.freezed.dart';
part 'gen/qr_response.g.dart';

@freezed
class QrResponse with _$QrResponse {
  factory QrResponse({
    String? name,
    String? lat1,
    String? lon1,
    String? lat2,
    String? lon2,
    int? id,
  }) = _QrResponse;

  factory QrResponse.fromJson(Map<String, dynamic> json) =>
      _$QrResponseFromJson(json);
}
