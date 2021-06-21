import 'package:freezed_annotation/freezed_annotation.dart';

import 'gossip.dart';

part 'peer.freezed.dart';
part 'peer.g.dart';

@freezed
class Peer with _$Peer {
  factory Peer({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'multiAddresses') required List<String> multiAddresses,
    @JsonKey(name: 'alias') String? alias,
    @JsonKey(name: 'relation') required String relation,
    @JsonKey(name: 'connected') required bool connected,
    @JsonKey(name: 'gossip') Gossip? gossip,
  }) = _Peer;

  factory Peer.fromJson(Map<String, dynamic> json) => _$PeerFromJson(json);
}
