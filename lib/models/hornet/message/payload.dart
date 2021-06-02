import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/models/converter/seconds_since_epoch_date_time_converter.dart';

part 'payload.freezed.dart';
part 'payload.g.dart';

@freezed
class Payload with _$Payload {
  factory Payload({
    @JsonKey(name: 'type') required int type,
    @JsonKey(name: 'index') required int index,
    @JsonKey(name: 'timestamp')
    @SecondsSinceEpochDateTimeConverter()
        required DateTime timestamp,
    @JsonKey(name: 'parentMessageIds') required List<String> parentMessageIds,
    @JsonKey(name: 'inclusionMerkleProof') required String inclusionMerkleProof,
    @JsonKey(name: 'nextPoWScore') required int nextPoWScore,
    @JsonKey(name: 'nextPoWScoreMilestoneIndex')
        required int nextPoWScoreMilestoneIndex,
    @JsonKey(name: 'publicKeys') required List<String> publicKeys,
    @JsonKey(name: 'receipt') Object? receipt,
    @JsonKey(name: 'signatures') required List<String> signatures,
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) =>
      _$PayloadFromJson(json);
}
