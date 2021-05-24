import 'package:freezed_annotation/freezed_annotation.dart';

import 'data.dart';

part 'treasury.freezed.dart';
part 'treasury.g.dart';

@freezed
class Treasury with _$Treasury {
  factory Treasury({
    @JsonKey(name: 'data') Data? data,
  }) = _Treasury;

  factory Treasury.fromJson(Map<String, dynamic> json) =>
      _$TreasuryFromJson(json);
}
