import 'package:freezed_annotation/freezed_annotation.dart';

import 'info_data.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class Info with _$Info {
  factory Info({
    @JsonKey(name: 'data') required InfoData data,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
