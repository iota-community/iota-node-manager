import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_status.freezed.dart';
part 'sync_status.g.dart';

@freezed
class SyncStatus with _$SyncStatus {
  factory SyncStatus({
    @JsonKey(name: 'cmi') required double cmi,
    @JsonKey(name: 'lmi') required double lmi,
  }) = _SyncStatus;

  factory SyncStatus.fromJson(Map<String, dynamic> json) =>
      _$SyncStatusFromJson(json);
}
