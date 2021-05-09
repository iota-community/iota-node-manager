import 'package:freezed_annotation/freezed_annotation.dart';

part 'milestone_info.freezed.dart';
part 'milestone_info.g.dart';

@freezed
class MileStoneInfo with _$MileStoneInfo {
  factory MileStoneInfo({
    @JsonKey(name: 'id') required String total,
  }) = _MileStoneInfo;

  factory MileStoneInfo.fromJson(Map<String, dynamic> json) =>
      _$MileStoneInfoFromJson(json);
}
