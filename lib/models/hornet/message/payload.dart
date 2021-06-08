import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/models/converter/seconds_since_epoch_date_time_converter.dart';

part 'payload.freezed.dart';
part 'payload.g.dart';

@freezed
class Payload with _$Payload {
  factory Payload({
    @JsonKey(name: 'type') required int type,
    @JsonKey(name: 'index') @IntToStringConverter() required String index,
    @JsonKey(name: 'timestamp')
    @SecondsSinceEpochDateTimeConverter()
        DateTime? timestamp,
    @JsonKey(name: 'parentMessageIds') List<String>? parentMessageIds,
    @JsonKey(name: 'inclusionMerkleProof') String? inclusionMerkleProof,
    @JsonKey(name: 'nextPoWScore') int? nextPoWScore,
    @JsonKey(name: 'nextPoWScoreMilestoneIndex')
        int? nextPoWScoreMilestoneIndex,
    @JsonKey(name: 'publicKeys') List<String>? publicKeys,
    @JsonKey(name: 'receipt') Object? receipt,
    @JsonKey(name: 'signatures') List<String>? signatures,
  }) = _Payload;

  factory Payload.fromJson(Map<String, dynamic> json) =>
      _$PayloadFromJson(json);
}
