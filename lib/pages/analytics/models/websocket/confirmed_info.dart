import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirmed_info.freezed.dart';
part 'confirmed_info.g.dart';

@freezed
class ConfirmedInfo with _$ConfirmedInfo {
  factory ConfirmedInfo({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'excluded_ids') required List<String> excludedIds,
  }) = _ConfirmedInfo;

  factory ConfirmedInfo.fromJson(Map<String, dynamic> json) =>
      _$ConfirmedInfoFromJson(json);
}
