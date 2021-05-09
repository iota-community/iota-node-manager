import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip_info.freezed.dart';
part 'tip_info.g.dart';

@freezed
class TipInfo with _$TipInfo {
  factory TipInfo({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'is_tip') required bool isTip,
  }) = _TipInfo;

  factory TipInfo.fromJson(Map<String, dynamic> json) =>
      _$TipInfoFromJson(json);
}
