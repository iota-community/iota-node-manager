// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'heartbeat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Heartbeat _$HeartbeatFromJson(Map<String, dynamic> json) {
  return _Heartbeat.fromJson(json);
}

/// @nodoc
class _$HeartbeatTearOff {
  const _$HeartbeatTearOff();

  _Heartbeat call(
      {@JsonKey(name: 'solidMilestoneIndex') required int solidMilestoneIndex,
      @JsonKey(name: 'prunedMilestoneIndex') required int prunedMilestoneIndex,
      @JsonKey(name: 'latestMilestoneIndex') required int latestMilestoneIndex,
      @JsonKey(name: 'connectedNeighbors') required int connectedNeighbors,
      @JsonKey(name: 'syncedNeighbors') required int syncedNeighbors}) {
    return _Heartbeat(
      solidMilestoneIndex: solidMilestoneIndex,
      prunedMilestoneIndex: prunedMilestoneIndex,
      latestMilestoneIndex: latestMilestoneIndex,
      connectedNeighbors: connectedNeighbors,
      syncedNeighbors: syncedNeighbors,
    );
  }

  Heartbeat fromJson(Map<String, Object> json) {
    return Heartbeat.fromJson(json);
  }
}

/// @nodoc
const $Heartbeat = _$HeartbeatTearOff();

/// @nodoc
mixin _$Heartbeat {
  @JsonKey(name: 'solidMilestoneIndex')
  int get solidMilestoneIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'prunedMilestoneIndex')
  int get prunedMilestoneIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestMilestoneIndex')
  int get latestMilestoneIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'connectedNeighbors')
  int get connectedNeighbors => throw _privateConstructorUsedError;
  @JsonKey(name: 'syncedNeighbors')
  int get syncedNeighbors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeartbeatCopyWith<Heartbeat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeartbeatCopyWith<$Res> {
  factory $HeartbeatCopyWith(Heartbeat value, $Res Function(Heartbeat) then) =
      _$HeartbeatCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'solidMilestoneIndex') int solidMilestoneIndex,
      @JsonKey(name: 'prunedMilestoneIndex') int prunedMilestoneIndex,
      @JsonKey(name: 'latestMilestoneIndex') int latestMilestoneIndex,
      @JsonKey(name: 'connectedNeighbors') int connectedNeighbors,
      @JsonKey(name: 'syncedNeighbors') int syncedNeighbors});
}

/// @nodoc
class _$HeartbeatCopyWithImpl<$Res> implements $HeartbeatCopyWith<$Res> {
  _$HeartbeatCopyWithImpl(this._value, this._then);

  final Heartbeat _value;
  // ignore: unused_field
  final $Res Function(Heartbeat) _then;

  @override
  $Res call({
    Object? solidMilestoneIndex = freezed,
    Object? prunedMilestoneIndex = freezed,
    Object? latestMilestoneIndex = freezed,
    Object? connectedNeighbors = freezed,
    Object? syncedNeighbors = freezed,
  }) {
    return _then(_value.copyWith(
      solidMilestoneIndex: solidMilestoneIndex == freezed
          ? _value.solidMilestoneIndex
          : solidMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      prunedMilestoneIndex: prunedMilestoneIndex == freezed
          ? _value.prunedMilestoneIndex
          : prunedMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      latestMilestoneIndex: latestMilestoneIndex == freezed
          ? _value.latestMilestoneIndex
          : latestMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      connectedNeighbors: connectedNeighbors == freezed
          ? _value.connectedNeighbors
          : connectedNeighbors // ignore: cast_nullable_to_non_nullable
              as int,
      syncedNeighbors: syncedNeighbors == freezed
          ? _value.syncedNeighbors
          : syncedNeighbors // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$HeartbeatCopyWith<$Res> implements $HeartbeatCopyWith<$Res> {
  factory _$HeartbeatCopyWith(
          _Heartbeat value, $Res Function(_Heartbeat) then) =
      __$HeartbeatCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'solidMilestoneIndex') int solidMilestoneIndex,
      @JsonKey(name: 'prunedMilestoneIndex') int prunedMilestoneIndex,
      @JsonKey(name: 'latestMilestoneIndex') int latestMilestoneIndex,
      @JsonKey(name: 'connectedNeighbors') int connectedNeighbors,
      @JsonKey(name: 'syncedNeighbors') int syncedNeighbors});
}

/// @nodoc
class __$HeartbeatCopyWithImpl<$Res> extends _$HeartbeatCopyWithImpl<$Res>
    implements _$HeartbeatCopyWith<$Res> {
  __$HeartbeatCopyWithImpl(_Heartbeat _value, $Res Function(_Heartbeat) _then)
      : super(_value, (v) => _then(v as _Heartbeat));

  @override
  _Heartbeat get _value => super._value as _Heartbeat;

  @override
  $Res call({
    Object? solidMilestoneIndex = freezed,
    Object? prunedMilestoneIndex = freezed,
    Object? latestMilestoneIndex = freezed,
    Object? connectedNeighbors = freezed,
    Object? syncedNeighbors = freezed,
  }) {
    return _then(_Heartbeat(
      solidMilestoneIndex: solidMilestoneIndex == freezed
          ? _value.solidMilestoneIndex
          : solidMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      prunedMilestoneIndex: prunedMilestoneIndex == freezed
          ? _value.prunedMilestoneIndex
          : prunedMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      latestMilestoneIndex: latestMilestoneIndex == freezed
          ? _value.latestMilestoneIndex
          : latestMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      connectedNeighbors: connectedNeighbors == freezed
          ? _value.connectedNeighbors
          : connectedNeighbors // ignore: cast_nullable_to_non_nullable
              as int,
      syncedNeighbors: syncedNeighbors == freezed
          ? _value.syncedNeighbors
          : syncedNeighbors // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Heartbeat implements _Heartbeat {
  _$_Heartbeat(
      {@JsonKey(name: 'solidMilestoneIndex') required this.solidMilestoneIndex,
      @JsonKey(name: 'prunedMilestoneIndex') required this.prunedMilestoneIndex,
      @JsonKey(name: 'latestMilestoneIndex') required this.latestMilestoneIndex,
      @JsonKey(name: 'connectedNeighbors') required this.connectedNeighbors,
      @JsonKey(name: 'syncedNeighbors') required this.syncedNeighbors});

  factory _$_Heartbeat.fromJson(Map<String, dynamic> json) =>
      _$_$_HeartbeatFromJson(json);

  @override
  @JsonKey(name: 'solidMilestoneIndex')
  final int solidMilestoneIndex;
  @override
  @JsonKey(name: 'prunedMilestoneIndex')
  final int prunedMilestoneIndex;
  @override
  @JsonKey(name: 'latestMilestoneIndex')
  final int latestMilestoneIndex;
  @override
  @JsonKey(name: 'connectedNeighbors')
  final int connectedNeighbors;
  @override
  @JsonKey(name: 'syncedNeighbors')
  final int syncedNeighbors;

  @override
  String toString() {
    return 'Heartbeat(solidMilestoneIndex: $solidMilestoneIndex, prunedMilestoneIndex: $prunedMilestoneIndex, latestMilestoneIndex: $latestMilestoneIndex, connectedNeighbors: $connectedNeighbors, syncedNeighbors: $syncedNeighbors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Heartbeat &&
            (identical(other.solidMilestoneIndex, solidMilestoneIndex) ||
                const DeepCollectionEquality()
                    .equals(other.solidMilestoneIndex, solidMilestoneIndex)) &&
            (identical(other.prunedMilestoneIndex, prunedMilestoneIndex) ||
                const DeepCollectionEquality().equals(
                    other.prunedMilestoneIndex, prunedMilestoneIndex)) &&
            (identical(other.latestMilestoneIndex, latestMilestoneIndex) ||
                const DeepCollectionEquality().equals(
                    other.latestMilestoneIndex, latestMilestoneIndex)) &&
            (identical(other.connectedNeighbors, connectedNeighbors) ||
                const DeepCollectionEquality()
                    .equals(other.connectedNeighbors, connectedNeighbors)) &&
            (identical(other.syncedNeighbors, syncedNeighbors) ||
                const DeepCollectionEquality()
                    .equals(other.syncedNeighbors, syncedNeighbors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(solidMilestoneIndex) ^
      const DeepCollectionEquality().hash(prunedMilestoneIndex) ^
      const DeepCollectionEquality().hash(latestMilestoneIndex) ^
      const DeepCollectionEquality().hash(connectedNeighbors) ^
      const DeepCollectionEquality().hash(syncedNeighbors);

  @JsonKey(ignore: true)
  @override
  _$HeartbeatCopyWith<_Heartbeat> get copyWith =>
      __$HeartbeatCopyWithImpl<_Heartbeat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HeartbeatToJson(this);
  }
}

abstract class _Heartbeat implements Heartbeat {
  factory _Heartbeat(
      {@JsonKey(name: 'solidMilestoneIndex')
          required int solidMilestoneIndex,
      @JsonKey(name: 'prunedMilestoneIndex')
          required int prunedMilestoneIndex,
      @JsonKey(name: 'latestMilestoneIndex')
          required int latestMilestoneIndex,
      @JsonKey(name: 'connectedNeighbors')
          required int connectedNeighbors,
      @JsonKey(name: 'syncedNeighbors')
          required int syncedNeighbors}) = _$_Heartbeat;

  factory _Heartbeat.fromJson(Map<String, dynamic> json) =
      _$_Heartbeat.fromJson;

  @override
  @JsonKey(name: 'solidMilestoneIndex')
  int get solidMilestoneIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'prunedMilestoneIndex')
  int get prunedMilestoneIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'latestMilestoneIndex')
  int get latestMilestoneIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'connectedNeighbors')
  int get connectedNeighbors => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'syncedNeighbors')
  int get syncedNeighbors => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HeartbeatCopyWith<_Heartbeat> get copyWith =>
      throw _privateConstructorUsedError;
}
