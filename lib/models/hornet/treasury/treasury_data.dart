import 'package:freezed_annotation/freezed_annotation.dart';

part 'treasury_data.freezed.dart';
part 'treasury_data.g.dart';

@freezed
class TreasuryData with _$TreasuryData {
  factory TreasuryData({
    @JsonKey(name: 'milestoneId') String? milestoneId,
    @JsonKey(name: 'amount') int? amount,
  }) = _TreasuryData;

  factory TreasuryData.fromJson(Map<String, dynamic> json) =>
      _$TreasuryDataFromJson(json);
}
