import 'package:freezed_annotation/freezed_annotation.dart';

import 'tips_data.dart';

part 'tips.freezed.dart';
part 'tips.g.dart';

@freezed
class Tips with _$Tips {
  factory Tips({
    @JsonKey(name: 'data') TipsData? data,
  }) = _Tips;

  factory Tips.fromJson(Map<String, dynamic> json) => _$TipsFromJson(json);
}
