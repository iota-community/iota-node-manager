import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_cleanup.freezed.dart';
part 'db_cleanup.g.dart';

@freezed
class DbCleanup with _$DbCleanup {
  factory DbCleanup({
    @JsonKey(name: 'start') required double start,
    @JsonKey(name: 'end') required double end,
  }) = _DbCleanup;

  factory DbCleanup.fromJson(Map<String, dynamic> json) =>
      _$DbCleanupFromJson(json);
}
