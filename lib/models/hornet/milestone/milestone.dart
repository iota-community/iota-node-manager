import 'package:freezed_annotation/freezed_annotation.dart';

import 'milestone_data.dart';

part 'milestone.freezed.dart';
part 'milestone.g.dart';

@freezed
class Milestone with _$Milestone {
  factory Milestone({
    @JsonKey(name: 'data') required MilestoneData data,
  }) = _Milestone;

  factory Milestone.fromJson(Map<String, dynamic> json) =>
      _$MilestoneFromJson(json);
}
