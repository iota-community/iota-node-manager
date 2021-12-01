// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Metrics _$MetricsFromJson(Map<String, dynamic> json) {
  return _Metrics.fromJson(json);
}

/// @nodoc
class _$MetricsTearOff {
  const _$MetricsTearOff();

  _Metrics call(
      {@JsonKey(name: 'newMessages')
          required int newMessages,
      @JsonKey(name: 'knownMessages')
          required int knownMessages,
      @JsonKey(name: 'receivedMessages')
          required int receivedMessages,
      @JsonKey(name: 'receivedMessageRequests')
          required int receivedMessageRequests,
      @JsonKey(name: 'receivedMilestoneRequests')
          required int receivedMilestoneRequests,
      @JsonKey(name: 'receivedHeartbeats')
          required int receivedHeartbeats,
      @JsonKey(name: 'sentMessages')
          required int sentMessages,
      @JsonKey(name: 'sentMessageRequests')
          required int sentMessageRequests,
      @JsonKey(name: 'sentMilestoneRequests')
          required int sentMilestoneRequests,
      @JsonKey(name: 'sentHeartbeats')
          required int sentHeartbeats,
      @JsonKey(name: 'droppedPackets')
          required int droppedPackets}) {
    return _Metrics(
      newMessages: newMessages,
      knownMessages: knownMessages,
      receivedMessages: receivedMessages,
      receivedMessageRequests: receivedMessageRequests,
      receivedMilestoneRequests: receivedMilestoneRequests,
      receivedHeartbeats: receivedHeartbeats,
      sentMessages: sentMessages,
      sentMessageRequests: sentMessageRequests,
      sentMilestoneRequests: sentMilestoneRequests,
      sentHeartbeats: sentHeartbeats,
      droppedPackets: droppedPackets,
    );
  }

  Metrics fromJson(Map<String, Object> json) {
    return Metrics.fromJson(json);
  }
}

/// @nodoc
const $Metrics = _$MetricsTearOff();

/// @nodoc
mixin _$Metrics {
  @JsonKey(name: 'newMessages')
  int get newMessages => throw _privateConstructorUsedError;
  @JsonKey(name: 'knownMessages')
  int get knownMessages => throw _privateConstructorUsedError;
  @JsonKey(name: 'receivedMessages')
  int get receivedMessages => throw _privateConstructorUsedError;
  @JsonKey(name: 'receivedMessageRequests')
  int get receivedMessageRequests => throw _privateConstructorUsedError;
  @JsonKey(name: 'receivedMilestoneRequests')
  int get receivedMilestoneRequests => throw _privateConstructorUsedError;
  @JsonKey(name: 'receivedHeartbeats')
  int get receivedHeartbeats => throw _privateConstructorUsedError;
  @JsonKey(name: 'sentMessages')
  int get sentMessages => throw _privateConstructorUsedError;
  @JsonKey(name: 'sentMessageRequests')
  int get sentMessageRequests => throw _privateConstructorUsedError;
  @JsonKey(name: 'sentMilestoneRequests')
  int get sentMilestoneRequests => throw _privateConstructorUsedError;
  @JsonKey(name: 'sentHeartbeats')
  int get sentHeartbeats => throw _privateConstructorUsedError;
  @JsonKey(name: 'droppedPackets')
  int get droppedPackets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetricsCopyWith<Metrics> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetricsCopyWith<$Res> {
  factory $MetricsCopyWith(Metrics value, $Res Function(Metrics) then) =
      _$MetricsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'newMessages') int newMessages,
      @JsonKey(name: 'knownMessages') int knownMessages,
      @JsonKey(name: 'receivedMessages') int receivedMessages,
      @JsonKey(name: 'receivedMessageRequests') int receivedMessageRequests,
      @JsonKey(name: 'receivedMilestoneRequests') int receivedMilestoneRequests,
      @JsonKey(name: 'receivedHeartbeats') int receivedHeartbeats,
      @JsonKey(name: 'sentMessages') int sentMessages,
      @JsonKey(name: 'sentMessageRequests') int sentMessageRequests,
      @JsonKey(name: 'sentMilestoneRequests') int sentMilestoneRequests,
      @JsonKey(name: 'sentHeartbeats') int sentHeartbeats,
      @JsonKey(name: 'droppedPackets') int droppedPackets});
}

/// @nodoc
class _$MetricsCopyWithImpl<$Res> implements $MetricsCopyWith<$Res> {
  _$MetricsCopyWithImpl(this._value, this._then);

  final Metrics _value;
  // ignore: unused_field
  final $Res Function(Metrics) _then;

  @override
  $Res call({
    Object? newMessages = freezed,
    Object? knownMessages = freezed,
    Object? receivedMessages = freezed,
    Object? receivedMessageRequests = freezed,
    Object? receivedMilestoneRequests = freezed,
    Object? receivedHeartbeats = freezed,
    Object? sentMessages = freezed,
    Object? sentMessageRequests = freezed,
    Object? sentMilestoneRequests = freezed,
    Object? sentHeartbeats = freezed,
    Object? droppedPackets = freezed,
  }) {
    return _then(_value.copyWith(
      newMessages: newMessages == freezed
          ? _value.newMessages
          : newMessages // ignore: cast_nullable_to_non_nullable
              as int,
      knownMessages: knownMessages == freezed
          ? _value.knownMessages
          : knownMessages // ignore: cast_nullable_to_non_nullable
              as int,
      receivedMessages: receivedMessages == freezed
          ? _value.receivedMessages
          : receivedMessages // ignore: cast_nullable_to_non_nullable
              as int,
      receivedMessageRequests: receivedMessageRequests == freezed
          ? _value.receivedMessageRequests
          : receivedMessageRequests // ignore: cast_nullable_to_non_nullable
              as int,
      receivedMilestoneRequests: receivedMilestoneRequests == freezed
          ? _value.receivedMilestoneRequests
          : receivedMilestoneRequests // ignore: cast_nullable_to_non_nullable
              as int,
      receivedHeartbeats: receivedHeartbeats == freezed
          ? _value.receivedHeartbeats
          : receivedHeartbeats // ignore: cast_nullable_to_non_nullable
              as int,
      sentMessages: sentMessages == freezed
          ? _value.sentMessages
          : sentMessages // ignore: cast_nullable_to_non_nullable
              as int,
      sentMessageRequests: sentMessageRequests == freezed
          ? _value.sentMessageRequests
          : sentMessageRequests // ignore: cast_nullable_to_non_nullable
              as int,
      sentMilestoneRequests: sentMilestoneRequests == freezed
          ? _value.sentMilestoneRequests
          : sentMilestoneRequests // ignore: cast_nullable_to_non_nullable
              as int,
      sentHeartbeats: sentHeartbeats == freezed
          ? _value.sentHeartbeats
          : sentHeartbeats // ignore: cast_nullable_to_non_nullable
              as int,
      droppedPackets: droppedPackets == freezed
          ? _value.droppedPackets
          : droppedPackets // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$MetricsCopyWith<$Res> implements $MetricsCopyWith<$Res> {
  factory _$MetricsCopyWith(_Metrics value, $Res Function(_Metrics) then) =
      __$MetricsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'newMessages') int newMessages,
      @JsonKey(name: 'knownMessages') int knownMessages,
      @JsonKey(name: 'receivedMessages') int receivedMessages,
      @JsonKey(name: 'receivedMessageRequests') int receivedMessageRequests,
      @JsonKey(name: 'receivedMilestoneRequests') int receivedMilestoneRequests,
      @JsonKey(name: 'receivedHeartbeats') int receivedHeartbeats,
      @JsonKey(name: 'sentMessages') int sentMessages,
      @JsonKey(name: 'sentMessageRequests') int sentMessageRequests,
      @JsonKey(name: 'sentMilestoneRequests') int sentMilestoneRequests,
      @JsonKey(name: 'sentHeartbeats') int sentHeartbeats,
      @JsonKey(name: 'droppedPackets') int droppedPackets});
}

/// @nodoc
class __$MetricsCopyWithImpl<$Res> extends _$MetricsCopyWithImpl<$Res>
    implements _$MetricsCopyWith<$Res> {
  __$MetricsCopyWithImpl(_Metrics _value, $Res Function(_Metrics) _then)
      : super(_value, (v) => _then(v as _Metrics));

  @override
  _Metrics get _value => super._value as _Metrics;

  @override
  $Res call({
    Object? newMessages = freezed,
    Object? knownMessages = freezed,
    Object? receivedMessages = freezed,
    Object? receivedMessageRequests = freezed,
    Object? receivedMilestoneRequests = freezed,
    Object? receivedHeartbeats = freezed,
    Object? sentMessages = freezed,
    Object? sentMessageRequests = freezed,
    Object? sentMilestoneRequests = freezed,
    Object? sentHeartbeats = freezed,
    Object? droppedPackets = freezed,
  }) {
    return _then(_Metrics(
      newMessages: newMessages == freezed
          ? _value.newMessages
          : newMessages // ignore: cast_nullable_to_non_nullable
              as int,
      knownMessages: knownMessages == freezed
          ? _value.knownMessages
          : knownMessages // ignore: cast_nullable_to_non_nullable
              as int,
      receivedMessages: receivedMessages == freezed
          ? _value.receivedMessages
          : receivedMessages // ignore: cast_nullable_to_non_nullable
              as int,
      receivedMessageRequests: receivedMessageRequests == freezed
          ? _value.receivedMessageRequests
          : receivedMessageRequests // ignore: cast_nullable_to_non_nullable
              as int,
      receivedMilestoneRequests: receivedMilestoneRequests == freezed
          ? _value.receivedMilestoneRequests
          : receivedMilestoneRequests // ignore: cast_nullable_to_non_nullable
              as int,
      receivedHeartbeats: receivedHeartbeats == freezed
          ? _value.receivedHeartbeats
          : receivedHeartbeats // ignore: cast_nullable_to_non_nullable
              as int,
      sentMessages: sentMessages == freezed
          ? _value.sentMessages
          : sentMessages // ignore: cast_nullable_to_non_nullable
              as int,
      sentMessageRequests: sentMessageRequests == freezed
          ? _value.sentMessageRequests
          : sentMessageRequests // ignore: cast_nullable_to_non_nullable
              as int,
      sentMilestoneRequests: sentMilestoneRequests == freezed
          ? _value.sentMilestoneRequests
          : sentMilestoneRequests // ignore: cast_nullable_to_non_nullable
              as int,
      sentHeartbeats: sentHeartbeats == freezed
          ? _value.sentHeartbeats
          : sentHeartbeats // ignore: cast_nullable_to_non_nullable
              as int,
      droppedPackets: droppedPackets == freezed
          ? _value.droppedPackets
          : droppedPackets // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Metrics implements _Metrics {
  _$_Metrics(
      {@JsonKey(name: 'newMessages')
          required this.newMessages,
      @JsonKey(name: 'knownMessages')
          required this.knownMessages,
      @JsonKey(name: 'receivedMessages')
          required this.receivedMessages,
      @JsonKey(name: 'receivedMessageRequests')
          required this.receivedMessageRequests,
      @JsonKey(name: 'receivedMilestoneRequests')
          required this.receivedMilestoneRequests,
      @JsonKey(name: 'receivedHeartbeats')
          required this.receivedHeartbeats,
      @JsonKey(name: 'sentMessages')
          required this.sentMessages,
      @JsonKey(name: 'sentMessageRequests')
          required this.sentMessageRequests,
      @JsonKey(name: 'sentMilestoneRequests')
          required this.sentMilestoneRequests,
      @JsonKey(name: 'sentHeartbeats')
          required this.sentHeartbeats,
      @JsonKey(name: 'droppedPackets')
          required this.droppedPackets});

  factory _$_Metrics.fromJson(Map<String, dynamic> json) =>
      _$$_MetricsFromJson(json);

  @override
  @JsonKey(name: 'newMessages')
  final int newMessages;
  @override
  @JsonKey(name: 'knownMessages')
  final int knownMessages;
  @override
  @JsonKey(name: 'receivedMessages')
  final int receivedMessages;
  @override
  @JsonKey(name: 'receivedMessageRequests')
  final int receivedMessageRequests;
  @override
  @JsonKey(name: 'receivedMilestoneRequests')
  final int receivedMilestoneRequests;
  @override
  @JsonKey(name: 'receivedHeartbeats')
  final int receivedHeartbeats;
  @override
  @JsonKey(name: 'sentMessages')
  final int sentMessages;
  @override
  @JsonKey(name: 'sentMessageRequests')
  final int sentMessageRequests;
  @override
  @JsonKey(name: 'sentMilestoneRequests')
  final int sentMilestoneRequests;
  @override
  @JsonKey(name: 'sentHeartbeats')
  final int sentHeartbeats;
  @override
  @JsonKey(name: 'droppedPackets')
  final int droppedPackets;

  @override
  String toString() {
    return 'Metrics(newMessages: $newMessages, knownMessages: $knownMessages, receivedMessages: $receivedMessages, receivedMessageRequests: $receivedMessageRequests, receivedMilestoneRequests: $receivedMilestoneRequests, receivedHeartbeats: $receivedHeartbeats, sentMessages: $sentMessages, sentMessageRequests: $sentMessageRequests, sentMilestoneRequests: $sentMilestoneRequests, sentHeartbeats: $sentHeartbeats, droppedPackets: $droppedPackets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Metrics &&
            (identical(other.newMessages, newMessages) ||
                const DeepCollectionEquality()
                    .equals(other.newMessages, newMessages)) &&
            (identical(other.knownMessages, knownMessages) ||
                const DeepCollectionEquality()
                    .equals(other.knownMessages, knownMessages)) &&
            (identical(other.receivedMessages, receivedMessages) ||
                const DeepCollectionEquality()
                    .equals(other.receivedMessages, receivedMessages)) &&
            (identical(
                    other.receivedMessageRequests, receivedMessageRequests) ||
                const DeepCollectionEquality().equals(
                    other.receivedMessageRequests, receivedMessageRequests)) &&
            (identical(other.receivedMilestoneRequests,
                    receivedMilestoneRequests) ||
                const DeepCollectionEquality().equals(
                    other.receivedMilestoneRequests,
                    receivedMilestoneRequests)) &&
            (identical(other.receivedHeartbeats, receivedHeartbeats) ||
                const DeepCollectionEquality()
                    .equals(other.receivedHeartbeats, receivedHeartbeats)) &&
            (identical(other.sentMessages, sentMessages) ||
                const DeepCollectionEquality()
                    .equals(other.sentMessages, sentMessages)) &&
            (identical(other.sentMessageRequests, sentMessageRequests) ||
                const DeepCollectionEquality()
                    .equals(other.sentMessageRequests, sentMessageRequests)) &&
            (identical(other.sentMilestoneRequests, sentMilestoneRequests) ||
                const DeepCollectionEquality().equals(
                    other.sentMilestoneRequests, sentMilestoneRequests)) &&
            (identical(other.sentHeartbeats, sentHeartbeats) ||
                const DeepCollectionEquality()
                    .equals(other.sentHeartbeats, sentHeartbeats)) &&
            (identical(other.droppedPackets, droppedPackets) ||
                const DeepCollectionEquality()
                    .equals(other.droppedPackets, droppedPackets)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newMessages) ^
      const DeepCollectionEquality().hash(knownMessages) ^
      const DeepCollectionEquality().hash(receivedMessages) ^
      const DeepCollectionEquality().hash(receivedMessageRequests) ^
      const DeepCollectionEquality().hash(receivedMilestoneRequests) ^
      const DeepCollectionEquality().hash(receivedHeartbeats) ^
      const DeepCollectionEquality().hash(sentMessages) ^
      const DeepCollectionEquality().hash(sentMessageRequests) ^
      const DeepCollectionEquality().hash(sentMilestoneRequests) ^
      const DeepCollectionEquality().hash(sentHeartbeats) ^
      const DeepCollectionEquality().hash(droppedPackets);

  @JsonKey(ignore: true)
  @override
  _$MetricsCopyWith<_Metrics> get copyWith =>
      __$MetricsCopyWithImpl<_Metrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetricsToJson(this);
  }
}

abstract class _Metrics implements Metrics {
  factory _Metrics(
      {@JsonKey(name: 'newMessages')
          required int newMessages,
      @JsonKey(name: 'knownMessages')
          required int knownMessages,
      @JsonKey(name: 'receivedMessages')
          required int receivedMessages,
      @JsonKey(name: 'receivedMessageRequests')
          required int receivedMessageRequests,
      @JsonKey(name: 'receivedMilestoneRequests')
          required int receivedMilestoneRequests,
      @JsonKey(name: 'receivedHeartbeats')
          required int receivedHeartbeats,
      @JsonKey(name: 'sentMessages')
          required int sentMessages,
      @JsonKey(name: 'sentMessageRequests')
          required int sentMessageRequests,
      @JsonKey(name: 'sentMilestoneRequests')
          required int sentMilestoneRequests,
      @JsonKey(name: 'sentHeartbeats')
          required int sentHeartbeats,
      @JsonKey(name: 'droppedPackets')
          required int droppedPackets}) = _$_Metrics;

  factory _Metrics.fromJson(Map<String, dynamic> json) = _$_Metrics.fromJson;

  @override
  @JsonKey(name: 'newMessages')
  int get newMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'knownMessages')
  int get knownMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'receivedMessages')
  int get receivedMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'receivedMessageRequests')
  int get receivedMessageRequests => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'receivedMilestoneRequests')
  int get receivedMilestoneRequests => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'receivedHeartbeats')
  int get receivedHeartbeats => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sentMessages')
  int get sentMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sentMessageRequests')
  int get sentMessageRequests => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sentMilestoneRequests')
  int get sentMilestoneRequests => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sentHeartbeats')
  int get sentHeartbeats => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'droppedPackets')
  int get droppedPackets => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MetricsCopyWith<_Metrics> get copyWith =>
      throw _privateConstructorUsedError;
}
