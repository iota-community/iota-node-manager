// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'milestone_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MilestoneData _$MilestoneDataFromJson(Map<String, dynamic> json) {
  return _MilestoneData.fromJson(json);
}

/// @nodoc
class _$MilestoneDataTearOff {
  const _$MilestoneDataTearOff();

  _MilestoneData call(
      {@JsonKey(name: 'index') required int index,
      @JsonKey(name: 'messageId') required String messageId,
      @JsonKey(name: 'timestamp') required int timestamp}) {
    return _MilestoneData(
      index: index,
      messageId: messageId,
      timestamp: timestamp,
    );
  }

  MilestoneData fromJson(Map<String, Object?> json) {
    return MilestoneData.fromJson(json);
  }
}

/// @nodoc
const $MilestoneData = _$MilestoneDataTearOff();

/// @nodoc
mixin _$MilestoneData {
  @JsonKey(name: 'index')
  int get index => throw _privateConstructorUsedError;
  @JsonKey(name: 'messageId')
  String get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  int get timestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MilestoneDataCopyWith<MilestoneData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MilestoneDataCopyWith<$Res> {
  factory $MilestoneDataCopyWith(
          MilestoneData value, $Res Function(MilestoneData) then) =
      _$MilestoneDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'index') int index,
      @JsonKey(name: 'messageId') String messageId,
      @JsonKey(name: 'timestamp') int timestamp});
}

/// @nodoc
class _$MilestoneDataCopyWithImpl<$Res>
    implements $MilestoneDataCopyWith<$Res> {
  _$MilestoneDataCopyWithImpl(this._value, this._then);

  final MilestoneData _value;
  // ignore: unused_field
  final $Res Function(MilestoneData) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? messageId = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MilestoneDataCopyWith<$Res>
    implements $MilestoneDataCopyWith<$Res> {
  factory _$MilestoneDataCopyWith(
          _MilestoneData value, $Res Function(_MilestoneData) then) =
      __$MilestoneDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'index') int index,
      @JsonKey(name: 'messageId') String messageId,
      @JsonKey(name: 'timestamp') int timestamp});
}

/// @nodoc
class __$MilestoneDataCopyWithImpl<$Res>
    extends _$MilestoneDataCopyWithImpl<$Res>
    implements _$MilestoneDataCopyWith<$Res> {
  __$MilestoneDataCopyWithImpl(
      _MilestoneData _value, $Res Function(_MilestoneData) _then)
      : super(_value, (v) => _then(v as _MilestoneData));

  @override
  _MilestoneData get _value => super._value as _MilestoneData;

  @override
  $Res call({
    Object? index = freezed,
    Object? messageId = freezed,
    Object? timestamp = freezed,
  }) {
    return _then(_MilestoneData(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MilestoneData implements _MilestoneData {
  _$_MilestoneData(
      {@JsonKey(name: 'index') required this.index,
      @JsonKey(name: 'messageId') required this.messageId,
      @JsonKey(name: 'timestamp') required this.timestamp});

  factory _$_MilestoneData.fromJson(Map<String, dynamic> json) =>
      _$$_MilestoneDataFromJson(json);

  @override
  @JsonKey(name: 'index')
  final int index;
  @override
  @JsonKey(name: 'messageId')
  final String messageId;
  @override
  @JsonKey(name: 'timestamp')
  final int timestamp;

  @override
  String toString() {
    return 'MilestoneData(index: $index, messageId: $messageId, timestamp: $timestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MilestoneData &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, messageId, timestamp);

  @JsonKey(ignore: true)
  @override
  _$MilestoneDataCopyWith<_MilestoneData> get copyWith =>
      __$MilestoneDataCopyWithImpl<_MilestoneData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MilestoneDataToJson(this);
  }
}

abstract class _MilestoneData implements MilestoneData {
  factory _MilestoneData(
      {@JsonKey(name: 'index') required int index,
      @JsonKey(name: 'messageId') required String messageId,
      @JsonKey(name: 'timestamp') required int timestamp}) = _$_MilestoneData;

  factory _MilestoneData.fromJson(Map<String, dynamic> json) =
      _$_MilestoneData.fromJson;

  @override
  @JsonKey(name: 'index')
  int get index;
  @override
  @JsonKey(name: 'messageId')
  String get messageId;
  @override
  @JsonKey(name: 'timestamp')
  int get timestamp;
  @override
  @JsonKey(ignore: true)
  _$MilestoneDataCopyWith<_MilestoneData> get copyWith =>
      throw _privateConstructorUsedError;
}
