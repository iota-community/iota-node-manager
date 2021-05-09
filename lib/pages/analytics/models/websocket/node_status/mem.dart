import 'package:freezed_annotation/freezed_annotation.dart';

part 'mem.freezed.dart';
part 'mem.g.dart';

@freezed
class Mem with _$Mem {
  factory Mem({
    @JsonKey(name: 'sys') required double sys,
    @JsonKey(name: 'heap_sys') required double heapSys,
    @JsonKey(name: 'heap_inuse') required double heapInuse,
    @JsonKey(name: 'heap_idle') required double heapIdle,
    @JsonKey(name: 'heap_released') required double heapReleased,
    @JsonKey(name: 'heap_objects') required double heapObjects,
    @JsonKey(name: 'm_span_inuse') required double mSpanInuse,
    @JsonKey(name: 'm_cache_inuse') required double mCacheInuse,
    @JsonKey(name: 'stack_sys') required double stackSys,
    @JsonKey(name: 'num_gc') required double numGc,
    @JsonKey(name: 'last_pause_gc') required double lastPauseGc,
  }) = _Mem;

  factory Mem.fromJson(Map<String, dynamic> json) => _$MemFromJson(json);
}
