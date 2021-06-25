import 'package:freezed_annotation/freezed_annotation.dart';

import 'peer.dart';

part 'peer_detail.freezed.dart';
part 'peer_detail.g.dart';

@freezed
class PeerDetail with _$PeerDetail {
  factory PeerDetail({
    @JsonKey(name: 'data') required Peer data,
  }) = _PeerDetail;

  factory PeerDetail.fromJson(Map<String, dynamic> json) =>
      _$PeerDetailFromJson(json);
}
