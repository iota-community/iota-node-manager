import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/models/converter/seconds_since_epoch_date_time_converter.dart';

part 'info_data.freezed.dart';
part 'info_data.g.dart';

@freezed
class InfoData with _$InfoData {
  factory InfoData({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'version') required String version,
    @JsonKey(name: 'isHealthy') required bool isHealthy,
    @JsonKey(name: 'networkId') required String networkId,
    @JsonKey(name: 'bech32HRP') required String bech32Hrp,
    @JsonKey(name: 'minPoWScore') required double minPoWScore,
    @JsonKey(name: 'messagesPerSecond') required double messagesPerSecond,
    @JsonKey(name: 'referencedMessagesPerSecond')
        required double referencedMessagesPerSecond,
    @JsonKey(name: 'referencedRate') required double referencedRate,
    @JsonKey(name: 'latestMilestoneTimestamp')
    @SecondsSinceEpochDateTimeConverter()
        DateTime? latestMilestoneTimestamp,
    @JsonKey(name: 'latestMilestoneIndex') required int latestMilestoneIndex,
    @JsonKey(name: 'confirmedMilestoneIndex')
        required int confirmedMilestoneIndex,
    @JsonKey(name: 'pruningIndex') required int pruningIndex,
    @JsonKey(name: 'features') required List<String> features,
  }) = _InfoData;

  factory InfoData.fromJson(Map<String, dynamic> json) =>
      _$InfoDataFromJson(json);
}
