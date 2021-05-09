import 'package:freezed_annotation/freezed_annotation.dart';

part 'incoming_message_work_units.freezed.dart';
part 'incoming_message_work_units.g.dart';

@freezed
class IncomingMessageWorkUnits with _$IncomingMessageWorkUnits {
  factory IncomingMessageWorkUnits({
    @JsonKey(name: 'size') required double size,
  }) = _IncomingMessageWorkUnits;

  factory IncomingMessageWorkUnits.fromJson(Map<String, dynamic> json) =>
      _$IncomingMessageWorkUnitsFromJson(json);
}
