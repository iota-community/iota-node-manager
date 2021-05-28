import 'package:freezed_annotation/freezed_annotation.dart';

part 'milestone_data.freezed.dart';
part 'milestone_data.g.dart';

@freezed
class MilestoneData with _$MilestoneData {
  factory MilestoneData({
    @JsonKey(name: 'index') required int index,
    @JsonKey(name: 'messageId') required String messageId,
    @JsonKey(name: 'timestamp') required int timestamp,
  }) = _MilestoneData;

  factory MilestoneData.fromJson(Map<String, dynamic> json) =>
      _$MilestoneDataFromJson(json);
}
