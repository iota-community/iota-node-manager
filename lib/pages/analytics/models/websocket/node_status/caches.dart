import 'package:freezed_annotation/freezed_annotation.dart';

import 'children.dart';
import 'incoming_message_work_units.dart';
import 'messages.dart';
import 'milestones.dart';
import 'request_queue.dart';

part 'caches.freezed.dart';
part 'caches.g.dart';

@freezed
class Caches with _$Caches {
  factory Caches({
    @JsonKey(name: 'request_queue') required RequestQueue requestQueue,
    @JsonKey(name: 'children') required Children children,
    @JsonKey(name: 'milestones') required Milestones milestones,
    @JsonKey(name: 'messages') required Messages messages,
    @JsonKey(name: 'incoming_message_work_units')
        required IncomingMessageWorkUnits incomingMessageWorkUnits,
  }) = _Caches;

  factory Caches.fromJson(Map<String, dynamic> json) => _$CachesFromJson(json);
}
