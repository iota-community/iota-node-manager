import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_peer_body.freezed.dart';
part 'add_peer_body.g.dart';

@freezed
class AddPeerBody with _$AddPeerBody {
  factory AddPeerBody({
    @JsonKey(name: 'multiAddress') required String multiAddress,
    @JsonKey(name: 'alias') required String alias,
  }) = _AddPeerBody;

  factory AddPeerBody.fromJson(Map<String, dynamic> json) =>
      _$AddPeerBodyFromJson(json);
}
