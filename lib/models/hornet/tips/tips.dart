import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'tips.freezed.dart';
part 'tips.g.dart';

@freezed
class Tips with _$Tips {
  factory Tips({
    @JsonKey(name: 'data') Data? data,
  }) = _Tips;

  factory Tips.fromJson(Map<String, dynamic> json) => _$TipsFromJson(json);
}
