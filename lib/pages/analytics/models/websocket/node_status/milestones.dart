import 'package:freezed_annotation/freezed_annotation.dart';

part 'milestones.freezed.dart';
part 'milestones.g.dart';

@freezed
class Milestones with _$Milestones {
  factory Milestones({
    @JsonKey(name: 'size') required double size,
  }) = _Milestones;

  factory Milestones.fromJson(Map<String, dynamic> json) =>
      _$MilestonesFromJson(json);
}
