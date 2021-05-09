// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'public_node_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PublicNodeStatus _$PublicNodeStatusFromJson(Map<String, dynamic> json) {
  return _PublicNodeStatus.fromJson(json);
}

/// @nodoc
class _$PublicNodeStatusTearOff {
  const _$PublicNodeStatusTearOff();

  _PublicNodeStatus call(
      {@JsonKey(name: 'snapshot_index') double? snapshotIndex,
      @JsonKey(name: 'pruning_index') double? pruningIndex,
      @JsonKey(name: 'is_healthy') bool? isHealthy,
      @JsonKey(name: 'is_synced') bool? isSynced}) {
    return _PublicNodeStatus(
      snapshotIndex: snapshotIndex,
      pruningIndex: pruningIndex,
      isHealthy: isHealthy,
      isSynced: isSynced,
    );
  }

  PublicNodeStatus fromJson(Map<String, Object> json) {
    return PublicNodeStatus.fromJson(json);
  }
}

/// @nodoc
const $PublicNodeStatus = _$PublicNodeStatusTearOff();

/// @nodoc
mixin _$PublicNodeStatus {
  @JsonKey(name: 'snapshot_index')
  double? get snapshotIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'pruning_index')
  double? get pruningIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_healthy')
  bool? get isHealthy => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_synced')
  bool? get isSynced => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicNodeStatusCopyWith<PublicNodeStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicNodeStatusCopyWith<$Res> {
  factory $PublicNodeStatusCopyWith(
          PublicNodeStatus value, $Res Function(PublicNodeStatus) then) =
      _$PublicNodeStatusCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'snapshot_index') double? snapshotIndex,
      @JsonKey(name: 'pruning_index') double? pruningIndex,
      @JsonKey(name: 'is_healthy') bool? isHealthy,
      @JsonKey(name: 'is_synced') bool? isSynced});
}

/// @nodoc
class _$PublicNodeStatusCopyWithImpl<$Res>
    implements $PublicNodeStatusCopyWith<$Res> {
  _$PublicNodeStatusCopyWithImpl(this._value, this._then);

  final PublicNodeStatus _value;
  // ignore: unused_field
  final $Res Function(PublicNodeStatus) _then;

  @override
  $Res call({
    Object? snapshotIndex = freezed,
    Object? pruningIndex = freezed,
    Object? isHealthy = freezed,
    Object? isSynced = freezed,
  }) {
    return _then(_value.copyWith(
      snapshotIndex: snapshotIndex == freezed
          ? _value.snapshotIndex
          : snapshotIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      pruningIndex: pruningIndex == freezed
          ? _value.pruningIndex
          : pruningIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      isHealthy: isHealthy == freezed
          ? _value.isHealthy
          : isHealthy // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSynced: isSynced == freezed
          ? _value.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$PublicNodeStatusCopyWith<$Res>
    implements $PublicNodeStatusCopyWith<$Res> {
  factory _$PublicNodeStatusCopyWith(
          _PublicNodeStatus value, $Res Function(_PublicNodeStatus) then) =
      __$PublicNodeStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'snapshot_index') double? snapshotIndex,
      @JsonKey(name: 'pruning_index') double? pruningIndex,
      @JsonKey(name: 'is_healthy') bool? isHealthy,
      @JsonKey(name: 'is_synced') bool? isSynced});
}

/// @nodoc
class __$PublicNodeStatusCopyWithImpl<$Res>
    extends _$PublicNodeStatusCopyWithImpl<$Res>
    implements _$PublicNodeStatusCopyWith<$Res> {
  __$PublicNodeStatusCopyWithImpl(
      _PublicNodeStatus _value, $Res Function(_PublicNodeStatus) _then)
      : super(_value, (v) => _then(v as _PublicNodeStatus));

  @override
  _PublicNodeStatus get _value => super._value as _PublicNodeStatus;

  @override
  $Res call({
    Object? snapshotIndex = freezed,
    Object? pruningIndex = freezed,
    Object? isHealthy = freezed,
    Object? isSynced = freezed,
  }) {
    return _then(_PublicNodeStatus(
      snapshotIndex: snapshotIndex == freezed
          ? _value.snapshotIndex
          : snapshotIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      pruningIndex: pruningIndex == freezed
          ? _value.pruningIndex
          : pruningIndex // ignore: cast_nullable_to_non_nullable
              as double?,
      isHealthy: isHealthy == freezed
          ? _value.isHealthy
          : isHealthy // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSynced: isSynced == freezed
          ? _value.isSynced
          : isSynced // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PublicNodeStatus implements _PublicNodeStatus {
  _$_PublicNodeStatus(
      {@JsonKey(name: 'snapshot_index') this.snapshotIndex,
      @JsonKey(name: 'pruning_index') this.pruningIndex,
      @JsonKey(name: 'is_healthy') this.isHealthy,
      @JsonKey(name: 'is_synced') this.isSynced});

  factory _$_PublicNodeStatus.fromJson(Map<String, dynamic> json) =>
      _$_$_PublicNodeStatusFromJson(json);

  @override
  @JsonKey(name: 'snapshot_index')
  final double? snapshotIndex;
  @override
  @JsonKey(name: 'pruning_index')
  final double? pruningIndex;
  @override
  @JsonKey(name: 'is_healthy')
  final bool? isHealthy;
  @override
  @JsonKey(name: 'is_synced')
  final bool? isSynced;

  @override
  String toString() {
    return 'PublicNodeStatus(snapshotIndex: $snapshotIndex, pruningIndex: $pruningIndex, isHealthy: $isHealthy, isSynced: $isSynced)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PublicNodeStatus &&
            (identical(other.snapshotIndex, snapshotIndex) ||
                const DeepCollectionEquality()
                    .equals(other.snapshotIndex, snapshotIndex)) &&
            (identical(other.pruningIndex, pruningIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pruningIndex, pruningIndex)) &&
            (identical(other.isHealthy, isHealthy) ||
                const DeepCollectionEquality()
                    .equals(other.isHealthy, isHealthy)) &&
            (identical(other.isSynced, isSynced) ||
                const DeepCollectionEquality()
                    .equals(other.isSynced, isSynced)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(snapshotIndex) ^
      const DeepCollectionEquality().hash(pruningIndex) ^
      const DeepCollectionEquality().hash(isHealthy) ^
      const DeepCollectionEquality().hash(isSynced);

  @JsonKey(ignore: true)
  @override
  _$PublicNodeStatusCopyWith<_PublicNodeStatus> get copyWith =>
      __$PublicNodeStatusCopyWithImpl<_PublicNodeStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PublicNodeStatusToJson(this);
  }
}

abstract class _PublicNodeStatus implements PublicNodeStatus {
  factory _PublicNodeStatus(
      {@JsonKey(name: 'snapshot_index') double? snapshotIndex,
      @JsonKey(name: 'pruning_index') double? pruningIndex,
      @JsonKey(name: 'is_healthy') bool? isHealthy,
      @JsonKey(name: 'is_synced') bool? isSynced}) = _$_PublicNodeStatus;

  factory _PublicNodeStatus.fromJson(Map<String, dynamic> json) =
      _$_PublicNodeStatus.fromJson;

  @override
  @JsonKey(name: 'snapshot_index')
  double? get snapshotIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pruning_index')
  double? get pruningIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_healthy')
  bool? get isHealthy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_synced')
  bool? get isSynced => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PublicNodeStatusCopyWith<_PublicNodeStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
