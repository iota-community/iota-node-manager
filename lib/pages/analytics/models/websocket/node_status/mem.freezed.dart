// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mem _$MemFromJson(Map<String, dynamic> json) {
  return _Mem.fromJson(json);
}

/// @nodoc
class _$MemTearOff {
  const _$MemTearOff();

  _Mem call(
      {@JsonKey(name: 'sys') required double sys,
      @JsonKey(name: 'heap_sys') required double heapSys,
      @JsonKey(name: 'heap_inuse') required double heapInuse,
      @JsonKey(name: 'heap_idle') required double heapIdle,
      @JsonKey(name: 'heap_released') required double heapReleased,
      @JsonKey(name: 'heap_objects') required double heapObjects,
      @JsonKey(name: 'm_span_inuse') required double mSpanInuse,
      @JsonKey(name: 'm_cache_inuse') required double mCacheInuse,
      @JsonKey(name: 'stack_sys') required double stackSys,
      @JsonKey(name: 'num_gc') required double numGc,
      @JsonKey(name: 'last_pause_gc') required double lastPauseGc}) {
    return _Mem(
      sys: sys,
      heapSys: heapSys,
      heapInuse: heapInuse,
      heapIdle: heapIdle,
      heapReleased: heapReleased,
      heapObjects: heapObjects,
      mSpanInuse: mSpanInuse,
      mCacheInuse: mCacheInuse,
      stackSys: stackSys,
      numGc: numGc,
      lastPauseGc: lastPauseGc,
    );
  }

  Mem fromJson(Map<String, Object> json) {
    return Mem.fromJson(json);
  }
}

/// @nodoc
const $Mem = _$MemTearOff();

/// @nodoc
mixin _$Mem {
  @JsonKey(name: 'sys')
  double get sys => throw _privateConstructorUsedError;
  @JsonKey(name: 'heap_sys')
  double get heapSys => throw _privateConstructorUsedError;
  @JsonKey(name: 'heap_inuse')
  double get heapInuse => throw _privateConstructorUsedError;
  @JsonKey(name: 'heap_idle')
  double get heapIdle => throw _privateConstructorUsedError;
  @JsonKey(name: 'heap_released')
  double get heapReleased => throw _privateConstructorUsedError;
  @JsonKey(name: 'heap_objects')
  double get heapObjects => throw _privateConstructorUsedError;
  @JsonKey(name: 'm_span_inuse')
  double get mSpanInuse => throw _privateConstructorUsedError;
  @JsonKey(name: 'm_cache_inuse')
  double get mCacheInuse => throw _privateConstructorUsedError;
  @JsonKey(name: 'stack_sys')
  double get stackSys => throw _privateConstructorUsedError;
  @JsonKey(name: 'num_gc')
  double get numGc => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_pause_gc')
  double get lastPauseGc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemCopyWith<Mem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemCopyWith<$Res> {
  factory $MemCopyWith(Mem value, $Res Function(Mem) then) =
      _$MemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sys') double sys,
      @JsonKey(name: 'heap_sys') double heapSys,
      @JsonKey(name: 'heap_inuse') double heapInuse,
      @JsonKey(name: 'heap_idle') double heapIdle,
      @JsonKey(name: 'heap_released') double heapReleased,
      @JsonKey(name: 'heap_objects') double heapObjects,
      @JsonKey(name: 'm_span_inuse') double mSpanInuse,
      @JsonKey(name: 'm_cache_inuse') double mCacheInuse,
      @JsonKey(name: 'stack_sys') double stackSys,
      @JsonKey(name: 'num_gc') double numGc,
      @JsonKey(name: 'last_pause_gc') double lastPauseGc});
}

/// @nodoc
class _$MemCopyWithImpl<$Res> implements $MemCopyWith<$Res> {
  _$MemCopyWithImpl(this._value, this._then);

  final Mem _value;
  // ignore: unused_field
  final $Res Function(Mem) _then;

  @override
  $Res call({
    Object? sys = freezed,
    Object? heapSys = freezed,
    Object? heapInuse = freezed,
    Object? heapIdle = freezed,
    Object? heapReleased = freezed,
    Object? heapObjects = freezed,
    Object? mSpanInuse = freezed,
    Object? mCacheInuse = freezed,
    Object? stackSys = freezed,
    Object? numGc = freezed,
    Object? lastPauseGc = freezed,
  }) {
    return _then(_value.copyWith(
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as double,
      heapSys: heapSys == freezed
          ? _value.heapSys
          : heapSys // ignore: cast_nullable_to_non_nullable
              as double,
      heapInuse: heapInuse == freezed
          ? _value.heapInuse
          : heapInuse // ignore: cast_nullable_to_non_nullable
              as double,
      heapIdle: heapIdle == freezed
          ? _value.heapIdle
          : heapIdle // ignore: cast_nullable_to_non_nullable
              as double,
      heapReleased: heapReleased == freezed
          ? _value.heapReleased
          : heapReleased // ignore: cast_nullable_to_non_nullable
              as double,
      heapObjects: heapObjects == freezed
          ? _value.heapObjects
          : heapObjects // ignore: cast_nullable_to_non_nullable
              as double,
      mSpanInuse: mSpanInuse == freezed
          ? _value.mSpanInuse
          : mSpanInuse // ignore: cast_nullable_to_non_nullable
              as double,
      mCacheInuse: mCacheInuse == freezed
          ? _value.mCacheInuse
          : mCacheInuse // ignore: cast_nullable_to_non_nullable
              as double,
      stackSys: stackSys == freezed
          ? _value.stackSys
          : stackSys // ignore: cast_nullable_to_non_nullable
              as double,
      numGc: numGc == freezed
          ? _value.numGc
          : numGc // ignore: cast_nullable_to_non_nullable
              as double,
      lastPauseGc: lastPauseGc == freezed
          ? _value.lastPauseGc
          : lastPauseGc // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MemCopyWith<$Res> implements $MemCopyWith<$Res> {
  factory _$MemCopyWith(_Mem value, $Res Function(_Mem) then) =
      __$MemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sys') double sys,
      @JsonKey(name: 'heap_sys') double heapSys,
      @JsonKey(name: 'heap_inuse') double heapInuse,
      @JsonKey(name: 'heap_idle') double heapIdle,
      @JsonKey(name: 'heap_released') double heapReleased,
      @JsonKey(name: 'heap_objects') double heapObjects,
      @JsonKey(name: 'm_span_inuse') double mSpanInuse,
      @JsonKey(name: 'm_cache_inuse') double mCacheInuse,
      @JsonKey(name: 'stack_sys') double stackSys,
      @JsonKey(name: 'num_gc') double numGc,
      @JsonKey(name: 'last_pause_gc') double lastPauseGc});
}

/// @nodoc
class __$MemCopyWithImpl<$Res> extends _$MemCopyWithImpl<$Res>
    implements _$MemCopyWith<$Res> {
  __$MemCopyWithImpl(_Mem _value, $Res Function(_Mem) _then)
      : super(_value, (v) => _then(v as _Mem));

  @override
  _Mem get _value => super._value as _Mem;

  @override
  $Res call({
    Object? sys = freezed,
    Object? heapSys = freezed,
    Object? heapInuse = freezed,
    Object? heapIdle = freezed,
    Object? heapReleased = freezed,
    Object? heapObjects = freezed,
    Object? mSpanInuse = freezed,
    Object? mCacheInuse = freezed,
    Object? stackSys = freezed,
    Object? numGc = freezed,
    Object? lastPauseGc = freezed,
  }) {
    return _then(_Mem(
      sys: sys == freezed
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as double,
      heapSys: heapSys == freezed
          ? _value.heapSys
          : heapSys // ignore: cast_nullable_to_non_nullable
              as double,
      heapInuse: heapInuse == freezed
          ? _value.heapInuse
          : heapInuse // ignore: cast_nullable_to_non_nullable
              as double,
      heapIdle: heapIdle == freezed
          ? _value.heapIdle
          : heapIdle // ignore: cast_nullable_to_non_nullable
              as double,
      heapReleased: heapReleased == freezed
          ? _value.heapReleased
          : heapReleased // ignore: cast_nullable_to_non_nullable
              as double,
      heapObjects: heapObjects == freezed
          ? _value.heapObjects
          : heapObjects // ignore: cast_nullable_to_non_nullable
              as double,
      mSpanInuse: mSpanInuse == freezed
          ? _value.mSpanInuse
          : mSpanInuse // ignore: cast_nullable_to_non_nullable
              as double,
      mCacheInuse: mCacheInuse == freezed
          ? _value.mCacheInuse
          : mCacheInuse // ignore: cast_nullable_to_non_nullable
              as double,
      stackSys: stackSys == freezed
          ? _value.stackSys
          : stackSys // ignore: cast_nullable_to_non_nullable
              as double,
      numGc: numGc == freezed
          ? _value.numGc
          : numGc // ignore: cast_nullable_to_non_nullable
              as double,
      lastPauseGc: lastPauseGc == freezed
          ? _value.lastPauseGc
          : lastPauseGc // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Mem implements _Mem {
  _$_Mem(
      {@JsonKey(name: 'sys') required this.sys,
      @JsonKey(name: 'heap_sys') required this.heapSys,
      @JsonKey(name: 'heap_inuse') required this.heapInuse,
      @JsonKey(name: 'heap_idle') required this.heapIdle,
      @JsonKey(name: 'heap_released') required this.heapReleased,
      @JsonKey(name: 'heap_objects') required this.heapObjects,
      @JsonKey(name: 'm_span_inuse') required this.mSpanInuse,
      @JsonKey(name: 'm_cache_inuse') required this.mCacheInuse,
      @JsonKey(name: 'stack_sys') required this.stackSys,
      @JsonKey(name: 'num_gc') required this.numGc,
      @JsonKey(name: 'last_pause_gc') required this.lastPauseGc});

  factory _$_Mem.fromJson(Map<String, dynamic> json) => _$_$_MemFromJson(json);

  @override
  @JsonKey(name: 'sys')
  final double sys;
  @override
  @JsonKey(name: 'heap_sys')
  final double heapSys;
  @override
  @JsonKey(name: 'heap_inuse')
  final double heapInuse;
  @override
  @JsonKey(name: 'heap_idle')
  final double heapIdle;
  @override
  @JsonKey(name: 'heap_released')
  final double heapReleased;
  @override
  @JsonKey(name: 'heap_objects')
  final double heapObjects;
  @override
  @JsonKey(name: 'm_span_inuse')
  final double mSpanInuse;
  @override
  @JsonKey(name: 'm_cache_inuse')
  final double mCacheInuse;
  @override
  @JsonKey(name: 'stack_sys')
  final double stackSys;
  @override
  @JsonKey(name: 'num_gc')
  final double numGc;
  @override
  @JsonKey(name: 'last_pause_gc')
  final double lastPauseGc;

  @override
  String toString() {
    return 'Mem(sys: $sys, heapSys: $heapSys, heapInuse: $heapInuse, heapIdle: $heapIdle, heapReleased: $heapReleased, heapObjects: $heapObjects, mSpanInuse: $mSpanInuse, mCacheInuse: $mCacheInuse, stackSys: $stackSys, numGc: $numGc, lastPauseGc: $lastPauseGc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Mem &&
            (identical(other.sys, sys) ||
                const DeepCollectionEquality().equals(other.sys, sys)) &&
            (identical(other.heapSys, heapSys) ||
                const DeepCollectionEquality()
                    .equals(other.heapSys, heapSys)) &&
            (identical(other.heapInuse, heapInuse) ||
                const DeepCollectionEquality()
                    .equals(other.heapInuse, heapInuse)) &&
            (identical(other.heapIdle, heapIdle) ||
                const DeepCollectionEquality()
                    .equals(other.heapIdle, heapIdle)) &&
            (identical(other.heapReleased, heapReleased) ||
                const DeepCollectionEquality()
                    .equals(other.heapReleased, heapReleased)) &&
            (identical(other.heapObjects, heapObjects) ||
                const DeepCollectionEquality()
                    .equals(other.heapObjects, heapObjects)) &&
            (identical(other.mSpanInuse, mSpanInuse) ||
                const DeepCollectionEquality()
                    .equals(other.mSpanInuse, mSpanInuse)) &&
            (identical(other.mCacheInuse, mCacheInuse) ||
                const DeepCollectionEquality()
                    .equals(other.mCacheInuse, mCacheInuse)) &&
            (identical(other.stackSys, stackSys) ||
                const DeepCollectionEquality()
                    .equals(other.stackSys, stackSys)) &&
            (identical(other.numGc, numGc) ||
                const DeepCollectionEquality().equals(other.numGc, numGc)) &&
            (identical(other.lastPauseGc, lastPauseGc) ||
                const DeepCollectionEquality()
                    .equals(other.lastPauseGc, lastPauseGc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sys) ^
      const DeepCollectionEquality().hash(heapSys) ^
      const DeepCollectionEquality().hash(heapInuse) ^
      const DeepCollectionEquality().hash(heapIdle) ^
      const DeepCollectionEquality().hash(heapReleased) ^
      const DeepCollectionEquality().hash(heapObjects) ^
      const DeepCollectionEquality().hash(mSpanInuse) ^
      const DeepCollectionEquality().hash(mCacheInuse) ^
      const DeepCollectionEquality().hash(stackSys) ^
      const DeepCollectionEquality().hash(numGc) ^
      const DeepCollectionEquality().hash(lastPauseGc);

  @JsonKey(ignore: true)
  @override
  _$MemCopyWith<_Mem> get copyWith =>
      __$MemCopyWithImpl<_Mem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MemToJson(this);
  }
}

abstract class _Mem implements Mem {
  factory _Mem(
      {@JsonKey(name: 'sys') required double sys,
      @JsonKey(name: 'heap_sys') required double heapSys,
      @JsonKey(name: 'heap_inuse') required double heapInuse,
      @JsonKey(name: 'heap_idle') required double heapIdle,
      @JsonKey(name: 'heap_released') required double heapReleased,
      @JsonKey(name: 'heap_objects') required double heapObjects,
      @JsonKey(name: 'm_span_inuse') required double mSpanInuse,
      @JsonKey(name: 'm_cache_inuse') required double mCacheInuse,
      @JsonKey(name: 'stack_sys') required double stackSys,
      @JsonKey(name: 'num_gc') required double numGc,
      @JsonKey(name: 'last_pause_gc') required double lastPauseGc}) = _$_Mem;

  factory _Mem.fromJson(Map<String, dynamic> json) = _$_Mem.fromJson;

  @override
  @JsonKey(name: 'sys')
  double get sys => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'heap_sys')
  double get heapSys => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'heap_inuse')
  double get heapInuse => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'heap_idle')
  double get heapIdle => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'heap_released')
  double get heapReleased => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'heap_objects')
  double get heapObjects => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'm_span_inuse')
  double get mSpanInuse => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'm_cache_inuse')
  double get mCacheInuse => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'stack_sys')
  double get stackSys => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'num_gc')
  double get numGc => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_pause_gc')
  double get lastPauseGc => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MemCopyWith<_Mem> get copyWith => throw _privateConstructorUsedError;
}
