// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call(
      {@JsonKey(name: 'name')
          String? name,
      @JsonKey(name: 'version')
          String? version,
      @JsonKey(name: 'isHealthy')
          bool? isHealthy,
      @JsonKey(name: 'networkId')
          String? networkId,
      @JsonKey(name: 'bech32HRP')
          String? bech32Hrp,
      @JsonKey(name: 'minPoWScore')
          int? minPoWScore,
      @JsonKey(name: 'messagesPerSecond')
          double? messagesPerSecond,
      @JsonKey(name: 'referencedMessagesPerSecond')
          double? referencedMessagesPerSecond,
      @JsonKey(name: 'referencedRate')
          double? referencedRate,
      @JsonKey(name: 'latestMilestoneTimestamp')
          int? latestMilestoneTimestamp,
      @JsonKey(name: 'latestMilestoneIndex')
          int? latestMilestoneIndex,
      @JsonKey(name: 'confirmedMilestoneIndex')
          int? confirmedMilestoneIndex,
      @JsonKey(name: 'pruningIndex')
          int? pruningIndex,
      @JsonKey(name: 'features')
          List<String>? features}) {
    return _Data(
      name: name,
      version: version,
      isHealthy: isHealthy,
      networkId: networkId,
      bech32Hrp: bech32Hrp,
      minPoWScore: minPoWScore,
      messagesPerSecond: messagesPerSecond,
      referencedMessagesPerSecond: referencedMessagesPerSecond,
      referencedRate: referencedRate,
      latestMilestoneTimestamp: latestMilestoneTimestamp,
      latestMilestoneIndex: latestMilestoneIndex,
      confirmedMilestoneIndex: confirmedMilestoneIndex,
      pruningIndex: pruningIndex,
      features: features,
    );
  }

  Data fromJson(Map<String, Object> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'isHealthy')
  bool? get isHealthy => throw _privateConstructorUsedError;
  @JsonKey(name: 'networkId')
  String? get networkId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bech32HRP')
  String? get bech32Hrp => throw _privateConstructorUsedError;
  @JsonKey(name: 'minPoWScore')
  int? get minPoWScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'messagesPerSecond')
  double? get messagesPerSecond => throw _privateConstructorUsedError;
  @JsonKey(name: 'referencedMessagesPerSecond')
  double? get referencedMessagesPerSecond => throw _privateConstructorUsedError;
  @JsonKey(name: 'referencedRate')
  double? get referencedRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestMilestoneTimestamp')
  int? get latestMilestoneTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestMilestoneIndex')
  int? get latestMilestoneIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmedMilestoneIndex')
  int? get confirmedMilestoneIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'pruningIndex')
  int? get pruningIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'features')
  List<String>? get features => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name')
          String? name,
      @JsonKey(name: 'version')
          String? version,
      @JsonKey(name: 'isHealthy')
          bool? isHealthy,
      @JsonKey(name: 'networkId')
          String? networkId,
      @JsonKey(name: 'bech32HRP')
          String? bech32Hrp,
      @JsonKey(name: 'minPoWScore')
          int? minPoWScore,
      @JsonKey(name: 'messagesPerSecond')
          double? messagesPerSecond,
      @JsonKey(name: 'referencedMessagesPerSecond')
          double? referencedMessagesPerSecond,
      @JsonKey(name: 'referencedRate')
          double? referencedRate,
      @JsonKey(name: 'latestMilestoneTimestamp')
          int? latestMilestoneTimestamp,
      @JsonKey(name: 'latestMilestoneIndex')
          int? latestMilestoneIndex,
      @JsonKey(name: 'confirmedMilestoneIndex')
          int? confirmedMilestoneIndex,
      @JsonKey(name: 'pruningIndex')
          int? pruningIndex,
      @JsonKey(name: 'features')
          List<String>? features});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? isHealthy = freezed,
    Object? networkId = freezed,
    Object? bech32Hrp = freezed,
    Object? minPoWScore = freezed,
    Object? messagesPerSecond = freezed,
    Object? referencedMessagesPerSecond = freezed,
    Object? referencedRate = freezed,
    Object? latestMilestoneTimestamp = freezed,
    Object? latestMilestoneIndex = freezed,
    Object? confirmedMilestoneIndex = freezed,
    Object? pruningIndex = freezed,
    Object? features = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      isHealthy: isHealthy == freezed
          ? _value.isHealthy
          : isHealthy // ignore: cast_nullable_to_non_nullable
              as bool?,
      networkId: networkId == freezed
          ? _value.networkId
          : networkId // ignore: cast_nullable_to_non_nullable
              as String?,
      bech32Hrp: bech32Hrp == freezed
          ? _value.bech32Hrp
          : bech32Hrp // ignore: cast_nullable_to_non_nullable
              as String?,
      minPoWScore: minPoWScore == freezed
          ? _value.minPoWScore
          : minPoWScore // ignore: cast_nullable_to_non_nullable
              as int?,
      messagesPerSecond: messagesPerSecond == freezed
          ? _value.messagesPerSecond
          : messagesPerSecond // ignore: cast_nullable_to_non_nullable
              as double?,
      referencedMessagesPerSecond: referencedMessagesPerSecond == freezed
          ? _value.referencedMessagesPerSecond
          : referencedMessagesPerSecond // ignore: cast_nullable_to_non_nullable
              as double?,
      referencedRate: referencedRate == freezed
          ? _value.referencedRate
          : referencedRate // ignore: cast_nullable_to_non_nullable
              as double?,
      latestMilestoneTimestamp: latestMilestoneTimestamp == freezed
          ? _value.latestMilestoneTimestamp
          : latestMilestoneTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      latestMilestoneIndex: latestMilestoneIndex == freezed
          ? _value.latestMilestoneIndex
          : latestMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      confirmedMilestoneIndex: confirmedMilestoneIndex == freezed
          ? _value.confirmedMilestoneIndex
          : confirmedMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      pruningIndex: pruningIndex == freezed
          ? _value.pruningIndex
          : pruningIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name')
          String? name,
      @JsonKey(name: 'version')
          String? version,
      @JsonKey(name: 'isHealthy')
          bool? isHealthy,
      @JsonKey(name: 'networkId')
          String? networkId,
      @JsonKey(name: 'bech32HRP')
          String? bech32Hrp,
      @JsonKey(name: 'minPoWScore')
          int? minPoWScore,
      @JsonKey(name: 'messagesPerSecond')
          double? messagesPerSecond,
      @JsonKey(name: 'referencedMessagesPerSecond')
          double? referencedMessagesPerSecond,
      @JsonKey(name: 'referencedRate')
          double? referencedRate,
      @JsonKey(name: 'latestMilestoneTimestamp')
          int? latestMilestoneTimestamp,
      @JsonKey(name: 'latestMilestoneIndex')
          int? latestMilestoneIndex,
      @JsonKey(name: 'confirmedMilestoneIndex')
          int? confirmedMilestoneIndex,
      @JsonKey(name: 'pruningIndex')
          int? pruningIndex,
      @JsonKey(name: 'features')
          List<String>? features});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? name = freezed,
    Object? version = freezed,
    Object? isHealthy = freezed,
    Object? networkId = freezed,
    Object? bech32Hrp = freezed,
    Object? minPoWScore = freezed,
    Object? messagesPerSecond = freezed,
    Object? referencedMessagesPerSecond = freezed,
    Object? referencedRate = freezed,
    Object? latestMilestoneTimestamp = freezed,
    Object? latestMilestoneIndex = freezed,
    Object? confirmedMilestoneIndex = freezed,
    Object? pruningIndex = freezed,
    Object? features = freezed,
  }) {
    return _then(_Data(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      isHealthy: isHealthy == freezed
          ? _value.isHealthy
          : isHealthy // ignore: cast_nullable_to_non_nullable
              as bool?,
      networkId: networkId == freezed
          ? _value.networkId
          : networkId // ignore: cast_nullable_to_non_nullable
              as String?,
      bech32Hrp: bech32Hrp == freezed
          ? _value.bech32Hrp
          : bech32Hrp // ignore: cast_nullable_to_non_nullable
              as String?,
      minPoWScore: minPoWScore == freezed
          ? _value.minPoWScore
          : minPoWScore // ignore: cast_nullable_to_non_nullable
              as int?,
      messagesPerSecond: messagesPerSecond == freezed
          ? _value.messagesPerSecond
          : messagesPerSecond // ignore: cast_nullable_to_non_nullable
              as double?,
      referencedMessagesPerSecond: referencedMessagesPerSecond == freezed
          ? _value.referencedMessagesPerSecond
          : referencedMessagesPerSecond // ignore: cast_nullable_to_non_nullable
              as double?,
      referencedRate: referencedRate == freezed
          ? _value.referencedRate
          : referencedRate // ignore: cast_nullable_to_non_nullable
              as double?,
      latestMilestoneTimestamp: latestMilestoneTimestamp == freezed
          ? _value.latestMilestoneTimestamp
          : latestMilestoneTimestamp // ignore: cast_nullable_to_non_nullable
              as int?,
      latestMilestoneIndex: latestMilestoneIndex == freezed
          ? _value.latestMilestoneIndex
          : latestMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      confirmedMilestoneIndex: confirmedMilestoneIndex == freezed
          ? _value.confirmedMilestoneIndex
          : confirmedMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      pruningIndex: pruningIndex == freezed
          ? _value.pruningIndex
          : pruningIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  _$_Data(
      {@JsonKey(name: 'name')
          this.name,
      @JsonKey(name: 'version')
          this.version,
      @JsonKey(name: 'isHealthy')
          this.isHealthy,
      @JsonKey(name: 'networkId')
          this.networkId,
      @JsonKey(name: 'bech32HRP')
          this.bech32Hrp,
      @JsonKey(name: 'minPoWScore')
          this.minPoWScore,
      @JsonKey(name: 'messagesPerSecond')
          this.messagesPerSecond,
      @JsonKey(name: 'referencedMessagesPerSecond')
          this.referencedMessagesPerSecond,
      @JsonKey(name: 'referencedRate')
          this.referencedRate,
      @JsonKey(name: 'latestMilestoneTimestamp')
          this.latestMilestoneTimestamp,
      @JsonKey(name: 'latestMilestoneIndex')
          this.latestMilestoneIndex,
      @JsonKey(name: 'confirmedMilestoneIndex')
          this.confirmedMilestoneIndex,
      @JsonKey(name: 'pruningIndex')
          this.pruningIndex,
      @JsonKey(name: 'features')
          this.features});

  factory _$_Data.fromJson(Map<String, dynamic> json) =>
      _$_$_DataFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'version')
  final String? version;
  @override
  @JsonKey(name: 'isHealthy')
  final bool? isHealthy;
  @override
  @JsonKey(name: 'networkId')
  final String? networkId;
  @override
  @JsonKey(name: 'bech32HRP')
  final String? bech32Hrp;
  @override
  @JsonKey(name: 'minPoWScore')
  final int? minPoWScore;
  @override
  @JsonKey(name: 'messagesPerSecond')
  final double? messagesPerSecond;
  @override
  @JsonKey(name: 'referencedMessagesPerSecond')
  final double? referencedMessagesPerSecond;
  @override
  @JsonKey(name: 'referencedRate')
  final double? referencedRate;
  @override
  @JsonKey(name: 'latestMilestoneTimestamp')
  final int? latestMilestoneTimestamp;
  @override
  @JsonKey(name: 'latestMilestoneIndex')
  final int? latestMilestoneIndex;
  @override
  @JsonKey(name: 'confirmedMilestoneIndex')
  final int? confirmedMilestoneIndex;
  @override
  @JsonKey(name: 'pruningIndex')
  final int? pruningIndex;
  @override
  @JsonKey(name: 'features')
  final List<String>? features;

  @override
  String toString() {
    return 'Data(name: $name, version: $version, isHealthy: $isHealthy, networkId: $networkId, bech32Hrp: $bech32Hrp, minPoWScore: $minPoWScore, messagesPerSecond: $messagesPerSecond, referencedMessagesPerSecond: $referencedMessagesPerSecond, referencedRate: $referencedRate, latestMilestoneTimestamp: $latestMilestoneTimestamp, latestMilestoneIndex: $latestMilestoneIndex, confirmedMilestoneIndex: $confirmedMilestoneIndex, pruningIndex: $pruningIndex, features: $features)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.isHealthy, isHealthy) ||
                const DeepCollectionEquality()
                    .equals(other.isHealthy, isHealthy)) &&
            (identical(other.networkId, networkId) ||
                const DeepCollectionEquality()
                    .equals(other.networkId, networkId)) &&
            (identical(other.bech32Hrp, bech32Hrp) ||
                const DeepCollectionEquality()
                    .equals(other.bech32Hrp, bech32Hrp)) &&
            (identical(other.minPoWScore, minPoWScore) ||
                const DeepCollectionEquality()
                    .equals(other.minPoWScore, minPoWScore)) &&
            (identical(other.messagesPerSecond, messagesPerSecond) ||
                const DeepCollectionEquality()
                    .equals(other.messagesPerSecond, messagesPerSecond)) &&
            (identical(other.referencedMessagesPerSecond,
                    referencedMessagesPerSecond) ||
                const DeepCollectionEquality().equals(
                    other.referencedMessagesPerSecond,
                    referencedMessagesPerSecond)) &&
            (identical(other.referencedRate, referencedRate) ||
                const DeepCollectionEquality()
                    .equals(other.referencedRate, referencedRate)) &&
            (identical(
                    other.latestMilestoneTimestamp, latestMilestoneTimestamp) ||
                const DeepCollectionEquality().equals(
                    other.latestMilestoneTimestamp,
                    latestMilestoneTimestamp)) &&
            (identical(other.latestMilestoneIndex, latestMilestoneIndex) ||
                const DeepCollectionEquality().equals(
                    other.latestMilestoneIndex, latestMilestoneIndex)) &&
            (identical(other.confirmedMilestoneIndex, confirmedMilestoneIndex) ||
                const DeepCollectionEquality().equals(
                    other.confirmedMilestoneIndex, confirmedMilestoneIndex)) &&
            (identical(other.pruningIndex, pruningIndex) ||
                const DeepCollectionEquality()
                    .equals(other.pruningIndex, pruningIndex)) &&
            (identical(other.features, features) ||
                const DeepCollectionEquality()
                    .equals(other.features, features)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(isHealthy) ^
      const DeepCollectionEquality().hash(networkId) ^
      const DeepCollectionEquality().hash(bech32Hrp) ^
      const DeepCollectionEquality().hash(minPoWScore) ^
      const DeepCollectionEquality().hash(messagesPerSecond) ^
      const DeepCollectionEquality().hash(referencedMessagesPerSecond) ^
      const DeepCollectionEquality().hash(referencedRate) ^
      const DeepCollectionEquality().hash(latestMilestoneTimestamp) ^
      const DeepCollectionEquality().hash(latestMilestoneIndex) ^
      const DeepCollectionEquality().hash(confirmedMilestoneIndex) ^
      const DeepCollectionEquality().hash(pruningIndex) ^
      const DeepCollectionEquality().hash(features);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  factory _Data(
      {@JsonKey(name: 'name')
          String? name,
      @JsonKey(name: 'version')
          String? version,
      @JsonKey(name: 'isHealthy')
          bool? isHealthy,
      @JsonKey(name: 'networkId')
          String? networkId,
      @JsonKey(name: 'bech32HRP')
          String? bech32Hrp,
      @JsonKey(name: 'minPoWScore')
          int? minPoWScore,
      @JsonKey(name: 'messagesPerSecond')
          double? messagesPerSecond,
      @JsonKey(name: 'referencedMessagesPerSecond')
          double? referencedMessagesPerSecond,
      @JsonKey(name: 'referencedRate')
          double? referencedRate,
      @JsonKey(name: 'latestMilestoneTimestamp')
          int? latestMilestoneTimestamp,
      @JsonKey(name: 'latestMilestoneIndex')
          int? latestMilestoneIndex,
      @JsonKey(name: 'confirmedMilestoneIndex')
          int? confirmedMilestoneIndex,
      @JsonKey(name: 'pruningIndex')
          int? pruningIndex,
      @JsonKey(name: 'features')
          List<String>? features}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'version')
  String? get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'isHealthy')
  bool? get isHealthy => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'networkId')
  String? get networkId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'bech32HRP')
  String? get bech32Hrp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'minPoWScore')
  int? get minPoWScore => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'messagesPerSecond')
  double? get messagesPerSecond => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'referencedMessagesPerSecond')
  double? get referencedMessagesPerSecond => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'referencedRate')
  double? get referencedRate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'latestMilestoneTimestamp')
  int? get latestMilestoneTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'latestMilestoneIndex')
  int? get latestMilestoneIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'confirmedMilestoneIndex')
  int? get confirmedMilestoneIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pruningIndex')
  int? get pruningIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'features')
  List<String>? get features => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
