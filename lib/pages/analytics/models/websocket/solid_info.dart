import 'package:freezed_annotation/freezed_annotation.dart';

part 'solid_info.freezed.dart';
part 'solid_info.g.dart';

@freezed
class SolidInfo with _$SolidInfo {
  factory SolidInfo({
    @JsonKey(name: 'id') required String id,
  }) = _SolidInfo;

  factory SolidInfo.fromJson(Map<String, dynamic> json) =>
      _$SolidInfoFromJson(json);
}
