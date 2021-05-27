import 'package:freezed_annotation/freezed_annotation.dart';

part 'tips_data.freezed.dart';
part 'tips_data.g.dart';

@freezed
class TipsData with _$TipsData {
  factory TipsData({
    @JsonKey(name: 'tipMessageIds') List<String>? tipMessageIds,
  }) = _TipsData;

  factory TipsData.fromJson(Map<String, dynamic> json) =>
      _$TipsDataFromJson(json);
}
