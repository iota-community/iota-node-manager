import 'package:freezed_annotation/freezed_annotation.dart';

import 'heartbeat.dart';
import 'metrics.dart';

part 'gossip.freezed.dart';
part 'gossip.g.dart';

@freezed
class Gossip with _$Gossip {
  factory Gossip({
    @JsonKey(name: 'heartbeat') required Heartbeat heartbeat,
    @JsonKey(name: 'metrics') required Metrics metrics,
  }) = _Gossip;

  factory Gossip.fromJson(Map<String, dynamic> json) => _$GossipFromJson(json);
}
