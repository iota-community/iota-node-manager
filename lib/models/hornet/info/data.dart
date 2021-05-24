import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'version') String? version,
    @JsonKey(name: 'isHealthy') bool? isHealthy,
    @JsonKey(name: 'networkId') String? networkId,
    @JsonKey(name: 'bech32HRP') String? bech32Hrp,
    @JsonKey(name: 'minPoWScore') int? minPoWScore,
    @JsonKey(name: 'messagesPerSecond') double? messagesPerSecond,
    @JsonKey(name: 'referencedMessagesPerSecond')
        double? referencedMessagesPerSecond,
    @JsonKey(name: 'referencedRate') double? referencedRate,
    @JsonKey(name: 'latestMilestoneTimestamp') int? latestMilestoneTimestamp,
    @JsonKey(name: 'latestMilestoneIndex') int? latestMilestoneIndex,
    @JsonKey(name: 'confirmedMilestoneIndex') int? confirmedMilestoneIndex,
    @JsonKey(name: 'pruningIndex') int? pruningIndex,
    @JsonKey(name: 'features') List<String>? features,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
