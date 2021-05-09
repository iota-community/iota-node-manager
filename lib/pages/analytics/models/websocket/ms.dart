import 'package:freezed_annotation/freezed_annotation.dart';

part 'ms.freezed.dart';
part 'ms.g.dart';

@freezed
class Ms with _$Ms {
  factory Ms({
    @JsonKey(name: 'messageID') required String messageID,
    @JsonKey(name: 'index') required double index,
  }) = _Ms;

  factory Ms.fromJson(Map<String, dynamic> json) => _$MsFromJson(json);
}
