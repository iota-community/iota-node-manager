// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfoData _$InfoDataFromJson(Map<String, dynamic> json) {
  return _InfoData.fromJson(json);
}

/// @nodoc
class _$InfoDataTearOff {
  const _$InfoDataTearOff();

  _InfoData call(
      {@JsonKey(name: 'name')
          required String name,
      @JsonKey(name: 'version')
          required String version,
      @JsonKey(name: 'isHealthy')
          required bool isHealthy,
      @JsonKey(name: 'networkId')
          required String networkId,
      @JsonKey(name: 'bech32HRP')
          required String bech32Hrp,
      @JsonKey(name: 'minPoWScore')
          required int minPoWScore,
      @JsonKey(name: 'messagesPerSecond')
          required double messagesPerSecond,
      @JsonKey(name: 'referencedMessagesPerSecond')
          required double referencedMessagesPerSecond,
      @JsonKey(name: 'referencedRate')
          required double referencedRate,
      @JsonKey(name: 'latestMilestoneTimestamp')
      @SecondsSinceEpochDateTimeConverter()
          DateTime? latestMilestoneTimestamp,
      @JsonKey(name: 'latestMilestoneIndex')
          required int latestMilestoneIndex,
      @JsonKey(name: 'confirmedMilestoneIndex')
          required int confirmedMilestoneIndex,
      @JsonKey(name: 'pruningIndex')
          required int pruningIndex,
      @JsonKey(name: 'features')
          required List<String> features}) {
    return _InfoData(
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

  InfoData fromJson(Map<String, Object?> json) {
    return InfoData.fromJson(json);
  }
}

/// @nodoc
const $InfoData = _$InfoDataTearOff();

/// @nodoc
mixin _$InfoData {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'isHealthy')
  bool get isHealthy => throw _privateConstructorUsedError;
  @JsonKey(name: 'networkId')
  String get networkId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bech32HRP')
  String get bech32Hrp => throw _privateConstructorUsedError;
  @JsonKey(name: 'minPoWScore')
  int get minPoWScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'messagesPerSecond')
  double get messagesPerSecond => throw _privateConstructorUsedError;
  @JsonKey(name: 'referencedMessagesPerSecond')
  double get referencedMessagesPerSecond => throw _privateConstructorUsedError;
  @JsonKey(name: 'referencedRate')
  double get referencedRate => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestMilestoneTimestamp')
  @SecondsSinceEpochDateTimeConverter()
  DateTime? get latestMilestoneTimestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'latestMilestoneIndex')
  int get latestMilestoneIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmedMilestoneIndex')
  int get confirmedMilestoneIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'pruningIndex')
  int get pruningIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'features')
  List<String> get features => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoDataCopyWith<InfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoDataCopyWith<$Res> {
  factory $InfoDataCopyWith(InfoData value, $Res Function(InfoData) then) =
      _$InfoDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'version')
          String version,
      @JsonKey(name: 'isHealthy')
          bool isHealthy,
      @JsonKey(name: 'networkId')
          String networkId,
      @JsonKey(name: 'bech32HRP')
          String bech32Hrp,
      @JsonKey(name: 'minPoWScore')
          int minPoWScore,
      @JsonKey(name: 'messagesPerSecond')
          double messagesPerSecond,
      @JsonKey(name: 'referencedMessagesPerSecond')
          double referencedMessagesPerSecond,
      @JsonKey(name: 'referencedRate')
          double referencedRate,
      @JsonKey(name: 'latestMilestoneTimestamp')
      @SecondsSinceEpochDateTimeConverter()
          DateTime? latestMilestoneTimestamp,
      @JsonKey(name: 'latestMilestoneIndex')
          int latestMilestoneIndex,
      @JsonKey(name: 'confirmedMilestoneIndex')
          int confirmedMilestoneIndex,
      @JsonKey(name: 'pruningIndex')
          int pruningIndex,
      @JsonKey(name: 'features')
          List<String> features});
}

/// @nodoc
class _$InfoDataCopyWithImpl<$Res> implements $InfoDataCopyWith<$Res> {
  _$InfoDataCopyWithImpl(this._value, this._then);

  final InfoData _value;
  // ignore: unused_field
  final $Res Function(InfoData) _then;

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
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      isHealthy: isHealthy == freezed
          ? _value.isHealthy
          : isHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      networkId: networkId == freezed
          ? _value.networkId
          : networkId // ignore: cast_nullable_to_non_nullable
              as String,
      bech32Hrp: bech32Hrp == freezed
          ? _value.bech32Hrp
          : bech32Hrp // ignore: cast_nullable_to_non_nullable
              as String,
      minPoWScore: minPoWScore == freezed
          ? _value.minPoWScore
          : minPoWScore // ignore: cast_nullable_to_non_nullable
              as int,
      messagesPerSecond: messagesPerSecond == freezed
          ? _value.messagesPerSecond
          : messagesPerSecond // ignore: cast_nullable_to_non_nullable
              as double,
      referencedMessagesPerSecond: referencedMessagesPerSecond == freezed
          ? _value.referencedMessagesPerSecond
          : referencedMessagesPerSecond // ignore: cast_nullable_to_non_nullable
              as double,
      referencedRate: referencedRate == freezed
          ? _value.referencedRate
          : referencedRate // ignore: cast_nullable_to_non_nullable
              as double,
      latestMilestoneTimestamp: latestMilestoneTimestamp == freezed
          ? _value.latestMilestoneTimestamp
          : latestMilestoneTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      latestMilestoneIndex: latestMilestoneIndex == freezed
          ? _value.latestMilestoneIndex
          : latestMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      confirmedMilestoneIndex: confirmedMilestoneIndex == freezed
          ? _value.confirmedMilestoneIndex
          : confirmedMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pruningIndex: pruningIndex == freezed
          ? _value.pruningIndex
          : pruningIndex // ignore: cast_nullable_to_non_nullable
              as int,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$InfoDataCopyWith<$Res> implements $InfoDataCopyWith<$Res> {
  factory _$InfoDataCopyWith(_InfoData value, $Res Function(_InfoData) then) =
      __$InfoDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'version')
          String version,
      @JsonKey(name: 'isHealthy')
          bool isHealthy,
      @JsonKey(name: 'networkId')
          String networkId,
      @JsonKey(name: 'bech32HRP')
          String bech32Hrp,
      @JsonKey(name: 'minPoWScore')
          int minPoWScore,
      @JsonKey(name: 'messagesPerSecond')
          double messagesPerSecond,
      @JsonKey(name: 'referencedMessagesPerSecond')
          double referencedMessagesPerSecond,
      @JsonKey(name: 'referencedRate')
          double referencedRate,
      @JsonKey(name: 'latestMilestoneTimestamp')
      @SecondsSinceEpochDateTimeConverter()
          DateTime? latestMilestoneTimestamp,
      @JsonKey(name: 'latestMilestoneIndex')
          int latestMilestoneIndex,
      @JsonKey(name: 'confirmedMilestoneIndex')
          int confirmedMilestoneIndex,
      @JsonKey(name: 'pruningIndex')
          int pruningIndex,
      @JsonKey(name: 'features')
          List<String> features});
}

/// @nodoc
class __$InfoDataCopyWithImpl<$Res> extends _$InfoDataCopyWithImpl<$Res>
    implements _$InfoDataCopyWith<$Res> {
  __$InfoDataCopyWithImpl(_InfoData _value, $Res Function(_InfoData) _then)
      : super(_value, (v) => _then(v as _InfoData));

  @override
  _InfoData get _value => super._value as _InfoData;

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
    return _then(_InfoData(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      isHealthy: isHealthy == freezed
          ? _value.isHealthy
          : isHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      networkId: networkId == freezed
          ? _value.networkId
          : networkId // ignore: cast_nullable_to_non_nullable
              as String,
      bech32Hrp: bech32Hrp == freezed
          ? _value.bech32Hrp
          : bech32Hrp // ignore: cast_nullable_to_non_nullable
              as String,
      minPoWScore: minPoWScore == freezed
          ? _value.minPoWScore
          : minPoWScore // ignore: cast_nullable_to_non_nullable
              as int,
      messagesPerSecond: messagesPerSecond == freezed
          ? _value.messagesPerSecond
          : messagesPerSecond // ignore: cast_nullable_to_non_nullable
              as double,
      referencedMessagesPerSecond: referencedMessagesPerSecond == freezed
          ? _value.referencedMessagesPerSecond
          : referencedMessagesPerSecond // ignore: cast_nullable_to_non_nullable
              as double,
      referencedRate: referencedRate == freezed
          ? _value.referencedRate
          : referencedRate // ignore: cast_nullable_to_non_nullable
              as double,
      latestMilestoneTimestamp: latestMilestoneTimestamp == freezed
          ? _value.latestMilestoneTimestamp
          : latestMilestoneTimestamp // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      latestMilestoneIndex: latestMilestoneIndex == freezed
          ? _value.latestMilestoneIndex
          : latestMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      confirmedMilestoneIndex: confirmedMilestoneIndex == freezed
          ? _value.confirmedMilestoneIndex
          : confirmedMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pruningIndex: pruningIndex == freezed
          ? _value.pruningIndex
          : pruningIndex // ignore: cast_nullable_to_non_nullable
              as int,
      features: features == freezed
          ? _value.features
          : features // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfoData implements _InfoData {
  _$_InfoData(
      {@JsonKey(name: 'name')
          required this.name,
      @JsonKey(name: 'version')
          required this.version,
      @JsonKey(name: 'isHealthy')
          required this.isHealthy,
      @JsonKey(name: 'networkId')
          required this.networkId,
      @JsonKey(name: 'bech32HRP')
          required this.bech32Hrp,
      @JsonKey(name: 'minPoWScore')
          required this.minPoWScore,
      @JsonKey(name: 'messagesPerSecond')
          required this.messagesPerSecond,
      @JsonKey(name: 'referencedMessagesPerSecond')
          required this.referencedMessagesPerSecond,
      @JsonKey(name: 'referencedRate')
          required this.referencedRate,
      @JsonKey(name: 'latestMilestoneTimestamp')
      @SecondsSinceEpochDateTimeConverter()
          this.latestMilestoneTimestamp,
      @JsonKey(name: 'latestMilestoneIndex')
          required this.latestMilestoneIndex,
      @JsonKey(name: 'confirmedMilestoneIndex')
          required this.confirmedMilestoneIndex,
      @JsonKey(name: 'pruningIndex')
          required this.pruningIndex,
      @JsonKey(name: 'features')
          required this.features});

  factory _$_InfoData.fromJson(Map<String, dynamic> json) =>
      _$$_InfoDataFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'version')
  final String version;
  @override
  @JsonKey(name: 'isHealthy')
  final bool isHealthy;
  @override
  @JsonKey(name: 'networkId')
  final String networkId;
  @override
  @JsonKey(name: 'bech32HRP')
  final String bech32Hrp;
  @override
  @JsonKey(name: 'minPoWScore')
  final int minPoWScore;
  @override
  @JsonKey(name: 'messagesPerSecond')
  final double messagesPerSecond;
  @override
  @JsonKey(name: 'referencedMessagesPerSecond')
  final double referencedMessagesPerSecond;
  @override
  @JsonKey(name: 'referencedRate')
  final double referencedRate;
  @override
  @JsonKey(name: 'latestMilestoneTimestamp')
  @SecondsSinceEpochDateTimeConverter()
  final DateTime? latestMilestoneTimestamp;
  @override
  @JsonKey(name: 'latestMilestoneIndex')
  final int latestMilestoneIndex;
  @override
  @JsonKey(name: 'confirmedMilestoneIndex')
  final int confirmedMilestoneIndex;
  @override
  @JsonKey(name: 'pruningIndex')
  final int pruningIndex;
  @override
  @JsonKey(name: 'features')
  final List<String> features;

  @override
  String toString() {
    return 'InfoData(name: $name, version: $version, isHealthy: $isHealthy, networkId: $networkId, bech32Hrp: $bech32Hrp, minPoWScore: $minPoWScore, messagesPerSecond: $messagesPerSecond, referencedMessagesPerSecond: $referencedMessagesPerSecond, referencedRate: $referencedRate, latestMilestoneTimestamp: $latestMilestoneTimestamp, latestMilestoneIndex: $latestMilestoneIndex, confirmedMilestoneIndex: $confirmedMilestoneIndex, pruningIndex: $pruningIndex, features: $features)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfoData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.isHealthy, isHealthy) ||
                other.isHealthy == isHealthy) &&
            (identical(other.networkId, networkId) ||
                other.networkId == networkId) &&
            (identical(other.bech32Hrp, bech32Hrp) ||
                other.bech32Hrp == bech32Hrp) &&
            (identical(other.minPoWScore, minPoWScore) ||
                other.minPoWScore == minPoWScore) &&
            (identical(other.messagesPerSecond, messagesPerSecond) ||
                other.messagesPerSecond == messagesPerSecond) &&
            (identical(other.referencedMessagesPerSecond,
                    referencedMessagesPerSecond) ||
                other.referencedMessagesPerSecond ==
                    referencedMessagesPerSecond) &&
            (identical(other.referencedRate, referencedRate) ||
                other.referencedRate == referencedRate) &&
            (identical(
                    other.latestMilestoneTimestamp, latestMilestoneTimestamp) ||
                other.latestMilestoneTimestamp == latestMilestoneTimestamp) &&
            (identical(other.latestMilestoneIndex, latestMilestoneIndex) ||
                other.latestMilestoneIndex == latestMilestoneIndex) &&
            (identical(
                    other.confirmedMilestoneIndex, confirmedMilestoneIndex) ||
                other.confirmedMilestoneIndex == confirmedMilestoneIndex) &&
            (identical(other.pruningIndex, pruningIndex) ||
                other.pruningIndex == pruningIndex) &&
            const DeepCollectionEquality().equals(other.features, features));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      version,
      isHealthy,
      networkId,
      bech32Hrp,
      minPoWScore,
      messagesPerSecond,
      referencedMessagesPerSecond,
      referencedRate,
      latestMilestoneTimestamp,
      latestMilestoneIndex,
      confirmedMilestoneIndex,
      pruningIndex,
      const DeepCollectionEquality().hash(features));

  @JsonKey(ignore: true)
  @override
  _$InfoDataCopyWith<_InfoData> get copyWith =>
      __$InfoDataCopyWithImpl<_InfoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoDataToJson(this);
  }
}

abstract class _InfoData implements InfoData {
  factory _InfoData(
      {@JsonKey(name: 'name')
          required String name,
      @JsonKey(name: 'version')
          required String version,
      @JsonKey(name: 'isHealthy')
          required bool isHealthy,
      @JsonKey(name: 'networkId')
          required String networkId,
      @JsonKey(name: 'bech32HRP')
          required String bech32Hrp,
      @JsonKey(name: 'minPoWScore')
          required int minPoWScore,
      @JsonKey(name: 'messagesPerSecond')
          required double messagesPerSecond,
      @JsonKey(name: 'referencedMessagesPerSecond')
          required double referencedMessagesPerSecond,
      @JsonKey(name: 'referencedRate')
          required double referencedRate,
      @JsonKey(name: 'latestMilestoneTimestamp')
      @SecondsSinceEpochDateTimeConverter()
          DateTime? latestMilestoneTimestamp,
      @JsonKey(name: 'latestMilestoneIndex')
          required int latestMilestoneIndex,
      @JsonKey(name: 'confirmedMilestoneIndex')
          required int confirmedMilestoneIndex,
      @JsonKey(name: 'pruningIndex')
          required int pruningIndex,
      @JsonKey(name: 'features')
          required List<String> features}) = _$_InfoData;

  factory _InfoData.fromJson(Map<String, dynamic> json) = _$_InfoData.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'version')
  String get version;
  @override
  @JsonKey(name: 'isHealthy')
  bool get isHealthy;
  @override
  @JsonKey(name: 'networkId')
  String get networkId;
  @override
  @JsonKey(name: 'bech32HRP')
  String get bech32Hrp;
  @override
  @JsonKey(name: 'minPoWScore')
  int get minPoWScore;
  @override
  @JsonKey(name: 'messagesPerSecond')
  double get messagesPerSecond;
  @override
  @JsonKey(name: 'referencedMessagesPerSecond')
  double get referencedMessagesPerSecond;
  @override
  @JsonKey(name: 'referencedRate')
  double get referencedRate;
  @override
  @JsonKey(name: 'latestMilestoneTimestamp')
  @SecondsSinceEpochDateTimeConverter()
  DateTime? get latestMilestoneTimestamp;
  @override
  @JsonKey(name: 'latestMilestoneIndex')
  int get latestMilestoneIndex;
  @override
  @JsonKey(name: 'confirmedMilestoneIndex')
  int get confirmedMilestoneIndex;
  @override
  @JsonKey(name: 'pruningIndex')
  int get pruningIndex;
  @override
  @JsonKey(name: 'features')
  List<String> get features;
  @override
  @JsonKey(ignore: true)
  _$InfoDataCopyWith<_InfoData> get copyWith =>
      throw _privateConstructorUsedError;
}
