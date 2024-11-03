import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/status_count.freezed.dart';

part 'gen/status_count.g.dart';

@unfreezed
class StatusCount with _$StatusCount {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory StatusCount({
    @JsonKey(name: 'A') double? a,
    @JsonKey(name: 'P') int? p,
    @JsonKey(name: 'INOUT') double? inout,
  }) = _StatusCount;

  factory StatusCount.fromJson(Map<String, dynamic> json) =>
      _$StatusCountFromJson(json);
}
