import 'package:freezed_annotation/freezed_annotation.dart';

import 'peer.dart';

part 'peers.freezed.dart';
part 'peers.g.dart';

@freezed
class Peers with _$Peers {
  factory Peers({
    @JsonKey(name: 'data') required List<Peer> data,
  }) = _Peers;

  factory Peers.fromJson(Map<String, dynamic> json) => _$PeersFromJson(json);
}
