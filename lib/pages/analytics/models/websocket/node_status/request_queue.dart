import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_queue.freezed.dart';
part 'request_queue.g.dart';

@freezed
class RequestQueue with _$RequestQueue {
  factory RequestQueue({
    @JsonKey(name: 'size') required double size,
  }) = _RequestQueue;

  factory RequestQueue.fromJson(Map<String, dynamic> json) =>
      _$RequestQueueFromJson(json);
}
