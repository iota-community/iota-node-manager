// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Mem _$_$_MemFromJson(Map<String, dynamic> json) {
  return _$_Mem(
    sys: (json['sys'] as num).toDouble(),
    heapSys: (json['heap_sys'] as num).toDouble(),
    heapInuse: (json['heap_inuse'] as num).toDouble(),
    heapIdle: (json['heap_idle'] as num).toDouble(),
    heapReleased: (json['heap_released'] as num).toDouble(),
    heapObjects: (json['heap_objects'] as num).toDouble(),
    mSpanInuse: (json['m_span_inuse'] as num).toDouble(),
    mCacheInuse: (json['m_cache_inuse'] as num).toDouble(),
    stackSys: (json['stack_sys'] as num).toDouble(),
    numGc: (json['num_gc'] as num).toDouble(),
    lastPauseGc: (json['last_pause_gc'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_MemToJson(_$_Mem instance) => <String, dynamic>{
      'sys': instance.sys,
      'heap_sys': instance.heapSys,
      'heap_inuse': instance.heapInuse,
      'heap_idle': instance.heapIdle,
      'heap_released': instance.heapReleased,
      'heap_objects': instance.heapObjects,
      'm_span_inuse': instance.mSpanInuse,
      'm_cache_inuse': instance.mCacheInuse,
      'stack_sys': instance.stackSys,
      'num_gc': instance.numGc,
      'last_pause_gc': instance.lastPauseGc,
    };
