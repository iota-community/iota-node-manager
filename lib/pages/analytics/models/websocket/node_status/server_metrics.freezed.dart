// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'server_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ServerMetrics _$ServerMetricsFromJson(Map<String, dynamic> json) {
  return _ServerMetrics.fromJson(json);
}

/// @nodoc
class _$ServerMetricsTearOff {
  const _$ServerMetricsTearOff();

  _ServerMetrics call(
      {@JsonKey(name: 'all_msgs') required double allMsgs,
      @JsonKey(name: 'new_msgs') required double newMsgs,
      @JsonKey(name: 'known_msgs') required double knownMsgs,
      @JsonKey(name: 'invalid_msgs') required double invalidMsgs,
      @JsonKey(name: 'invalid_req') required double invalidReq,
      @JsonKey(name: 'rec_msg_req') required double recMsgReq,
      @JsonKey(name: 'rec_ms_req') required double recMsReq,
      @JsonKey(name: 'rec_heartbeat') required double recHeartbeat,
      @JsonKey(name: 'sent_msgs') required double sentMsgs,
      @JsonKey(name: 'sent_msg_req') required double sentMsgReq,
      @JsonKey(name: 'sent_ms_req') required double sentMsReq,
      @JsonKey(name: 'sent_heartbeat') required double sentHeartbeat,
      @JsonKey(name: 'dropped_sent_packets') required double droppedSentPackets,
      @JsonKey(name: 'sent_spam_messages') required double sentSpamMessages,
      @JsonKey(name: 'validated_messages') required double validatedMessages}) {
    return _ServerMetrics(
      allMsgs: allMsgs,
      newMsgs: newMsgs,
      knownMsgs: knownMsgs,
      invalidMsgs: invalidMsgs,
      invalidReq: invalidReq,
      recMsgReq: recMsgReq,
      recMsReq: recMsReq,
      recHeartbeat: recHeartbeat,
      sentMsgs: sentMsgs,
      sentMsgReq: sentMsgReq,
      sentMsReq: sentMsReq,
      sentHeartbeat: sentHeartbeat,
      droppedSentPackets: droppedSentPackets,
      sentSpamMessages: sentSpamMessages,
      validatedMessages: validatedMessages,
    );
  }

  ServerMetrics fromJson(Map<String, Object> json) {
    return ServerMetrics.fromJson(json);
  }
}

/// @nodoc
const $ServerMetrics = _$ServerMetricsTearOff();

/// @nodoc
mixin _$ServerMetrics {
  @JsonKey(name: 'all_msgs')
  double get allMsgs => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_msgs')
  double get newMsgs => throw _privateConstructorUsedError;
  @JsonKey(name: 'known_msgs')
  double get knownMsgs => throw _privateConstructorUsedError;
  @JsonKey(name: 'invalid_msgs')
  double get invalidMsgs => throw _privateConstructorUsedError;
  @JsonKey(name: 'invalid_req')
  double get invalidReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'rec_msg_req')
  double get recMsgReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'rec_ms_req')
  double get recMsReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'rec_heartbeat')
  double get recHeartbeat => throw _privateConstructorUsedError;
  @JsonKey(name: 'sent_msgs')
  double get sentMsgs => throw _privateConstructorUsedError;
  @JsonKey(name: 'sent_msg_req')
  double get sentMsgReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'sent_ms_req')
  double get sentMsReq => throw _privateConstructorUsedError;
  @JsonKey(name: 'sent_heartbeat')
  double get sentHeartbeat => throw _privateConstructorUsedError;
  @JsonKey(name: 'dropped_sent_packets')
  double get droppedSentPackets => throw _privateConstructorUsedError;
  @JsonKey(name: 'sent_spam_messages')
  double get sentSpamMessages => throw _privateConstructorUsedError;
  @JsonKey(name: 'validated_messages')
  double get validatedMessages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServerMetricsCopyWith<ServerMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerMetricsCopyWith<$Res> {
  factory $ServerMetricsCopyWith(
          ServerMetrics value, $Res Function(ServerMetrics) then) =
      _$ServerMetricsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'all_msgs') double allMsgs,
      @JsonKey(name: 'new_msgs') double newMsgs,
      @JsonKey(name: 'known_msgs') double knownMsgs,
      @JsonKey(name: 'invalid_msgs') double invalidMsgs,
      @JsonKey(name: 'invalid_req') double invalidReq,
      @JsonKey(name: 'rec_msg_req') double recMsgReq,
      @JsonKey(name: 'rec_ms_req') double recMsReq,
      @JsonKey(name: 'rec_heartbeat') double recHeartbeat,
      @JsonKey(name: 'sent_msgs') double sentMsgs,
      @JsonKey(name: 'sent_msg_req') double sentMsgReq,
      @JsonKey(name: 'sent_ms_req') double sentMsReq,
      @JsonKey(name: 'sent_heartbeat') double sentHeartbeat,
      @JsonKey(name: 'dropped_sent_packets') double droppedSentPackets,
      @JsonKey(name: 'sent_spam_messages') double sentSpamMessages,
      @JsonKey(name: 'validated_messages') double validatedMessages});
}

/// @nodoc
class _$ServerMetricsCopyWithImpl<$Res>
    implements $ServerMetricsCopyWith<$Res> {
  _$ServerMetricsCopyWithImpl(this._value, this._then);

  final ServerMetrics _value;
  // ignore: unused_field
  final $Res Function(ServerMetrics) _then;

  @override
  $Res call({
    Object? allMsgs = freezed,
    Object? newMsgs = freezed,
    Object? knownMsgs = freezed,
    Object? invalidMsgs = freezed,
    Object? invalidReq = freezed,
    Object? recMsgReq = freezed,
    Object? recMsReq = freezed,
    Object? recHeartbeat = freezed,
    Object? sentMsgs = freezed,
    Object? sentMsgReq = freezed,
    Object? sentMsReq = freezed,
    Object? sentHeartbeat = freezed,
    Object? droppedSentPackets = freezed,
    Object? sentSpamMessages = freezed,
    Object? validatedMessages = freezed,
  }) {
    return _then(_value.copyWith(
      allMsgs: allMsgs == freezed
          ? _value.allMsgs
          : allMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      newMsgs: newMsgs == freezed
          ? _value.newMsgs
          : newMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      knownMsgs: knownMsgs == freezed
          ? _value.knownMsgs
          : knownMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      invalidMsgs: invalidMsgs == freezed
          ? _value.invalidMsgs
          : invalidMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      invalidReq: invalidReq == freezed
          ? _value.invalidReq
          : invalidReq // ignore: cast_nullable_to_non_nullable
              as double,
      recMsgReq: recMsgReq == freezed
          ? _value.recMsgReq
          : recMsgReq // ignore: cast_nullable_to_non_nullable
              as double,
      recMsReq: recMsReq == freezed
          ? _value.recMsReq
          : recMsReq // ignore: cast_nullable_to_non_nullable
              as double,
      recHeartbeat: recHeartbeat == freezed
          ? _value.recHeartbeat
          : recHeartbeat // ignore: cast_nullable_to_non_nullable
              as double,
      sentMsgs: sentMsgs == freezed
          ? _value.sentMsgs
          : sentMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      sentMsgReq: sentMsgReq == freezed
          ? _value.sentMsgReq
          : sentMsgReq // ignore: cast_nullable_to_non_nullable
              as double,
      sentMsReq: sentMsReq == freezed
          ? _value.sentMsReq
          : sentMsReq // ignore: cast_nullable_to_non_nullable
              as double,
      sentHeartbeat: sentHeartbeat == freezed
          ? _value.sentHeartbeat
          : sentHeartbeat // ignore: cast_nullable_to_non_nullable
              as double,
      droppedSentPackets: droppedSentPackets == freezed
          ? _value.droppedSentPackets
          : droppedSentPackets // ignore: cast_nullable_to_non_nullable
              as double,
      sentSpamMessages: sentSpamMessages == freezed
          ? _value.sentSpamMessages
          : sentSpamMessages // ignore: cast_nullable_to_non_nullable
              as double,
      validatedMessages: validatedMessages == freezed
          ? _value.validatedMessages
          : validatedMessages // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ServerMetricsCopyWith<$Res>
    implements $ServerMetricsCopyWith<$Res> {
  factory _$ServerMetricsCopyWith(
          _ServerMetrics value, $Res Function(_ServerMetrics) then) =
      __$ServerMetricsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'all_msgs') double allMsgs,
      @JsonKey(name: 'new_msgs') double newMsgs,
      @JsonKey(name: 'known_msgs') double knownMsgs,
      @JsonKey(name: 'invalid_msgs') double invalidMsgs,
      @JsonKey(name: 'invalid_req') double invalidReq,
      @JsonKey(name: 'rec_msg_req') double recMsgReq,
      @JsonKey(name: 'rec_ms_req') double recMsReq,
      @JsonKey(name: 'rec_heartbeat') double recHeartbeat,
      @JsonKey(name: 'sent_msgs') double sentMsgs,
      @JsonKey(name: 'sent_msg_req') double sentMsgReq,
      @JsonKey(name: 'sent_ms_req') double sentMsReq,
      @JsonKey(name: 'sent_heartbeat') double sentHeartbeat,
      @JsonKey(name: 'dropped_sent_packets') double droppedSentPackets,
      @JsonKey(name: 'sent_spam_messages') double sentSpamMessages,
      @JsonKey(name: 'validated_messages') double validatedMessages});
}

/// @nodoc
class __$ServerMetricsCopyWithImpl<$Res>
    extends _$ServerMetricsCopyWithImpl<$Res>
    implements _$ServerMetricsCopyWith<$Res> {
  __$ServerMetricsCopyWithImpl(
      _ServerMetrics _value, $Res Function(_ServerMetrics) _then)
      : super(_value, (v) => _then(v as _ServerMetrics));

  @override
  _ServerMetrics get _value => super._value as _ServerMetrics;

  @override
  $Res call({
    Object? allMsgs = freezed,
    Object? newMsgs = freezed,
    Object? knownMsgs = freezed,
    Object? invalidMsgs = freezed,
    Object? invalidReq = freezed,
    Object? recMsgReq = freezed,
    Object? recMsReq = freezed,
    Object? recHeartbeat = freezed,
    Object? sentMsgs = freezed,
    Object? sentMsgReq = freezed,
    Object? sentMsReq = freezed,
    Object? sentHeartbeat = freezed,
    Object? droppedSentPackets = freezed,
    Object? sentSpamMessages = freezed,
    Object? validatedMessages = freezed,
  }) {
    return _then(_ServerMetrics(
      allMsgs: allMsgs == freezed
          ? _value.allMsgs
          : allMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      newMsgs: newMsgs == freezed
          ? _value.newMsgs
          : newMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      knownMsgs: knownMsgs == freezed
          ? _value.knownMsgs
          : knownMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      invalidMsgs: invalidMsgs == freezed
          ? _value.invalidMsgs
          : invalidMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      invalidReq: invalidReq == freezed
          ? _value.invalidReq
          : invalidReq // ignore: cast_nullable_to_non_nullable
              as double,
      recMsgReq: recMsgReq == freezed
          ? _value.recMsgReq
          : recMsgReq // ignore: cast_nullable_to_non_nullable
              as double,
      recMsReq: recMsReq == freezed
          ? _value.recMsReq
          : recMsReq // ignore: cast_nullable_to_non_nullable
              as double,
      recHeartbeat: recHeartbeat == freezed
          ? _value.recHeartbeat
          : recHeartbeat // ignore: cast_nullable_to_non_nullable
              as double,
      sentMsgs: sentMsgs == freezed
          ? _value.sentMsgs
          : sentMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      sentMsgReq: sentMsgReq == freezed
          ? _value.sentMsgReq
          : sentMsgReq // ignore: cast_nullable_to_non_nullable
              as double,
      sentMsReq: sentMsReq == freezed
          ? _value.sentMsReq
          : sentMsReq // ignore: cast_nullable_to_non_nullable
              as double,
      sentHeartbeat: sentHeartbeat == freezed
          ? _value.sentHeartbeat
          : sentHeartbeat // ignore: cast_nullable_to_non_nullable
              as double,
      droppedSentPackets: droppedSentPackets == freezed
          ? _value.droppedSentPackets
          : droppedSentPackets // ignore: cast_nullable_to_non_nullable
              as double,
      sentSpamMessages: sentSpamMessages == freezed
          ? _value.sentSpamMessages
          : sentSpamMessages // ignore: cast_nullable_to_non_nullable
              as double,
      validatedMessages: validatedMessages == freezed
          ? _value.validatedMessages
          : validatedMessages // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ServerMetrics implements _ServerMetrics {
  _$_ServerMetrics(
      {@JsonKey(name: 'all_msgs') required this.allMsgs,
      @JsonKey(name: 'new_msgs') required this.newMsgs,
      @JsonKey(name: 'known_msgs') required this.knownMsgs,
      @JsonKey(name: 'invalid_msgs') required this.invalidMsgs,
      @JsonKey(name: 'invalid_req') required this.invalidReq,
      @JsonKey(name: 'rec_msg_req') required this.recMsgReq,
      @JsonKey(name: 'rec_ms_req') required this.recMsReq,
      @JsonKey(name: 'rec_heartbeat') required this.recHeartbeat,
      @JsonKey(name: 'sent_msgs') required this.sentMsgs,
      @JsonKey(name: 'sent_msg_req') required this.sentMsgReq,
      @JsonKey(name: 'sent_ms_req') required this.sentMsReq,
      @JsonKey(name: 'sent_heartbeat') required this.sentHeartbeat,
      @JsonKey(name: 'dropped_sent_packets') required this.droppedSentPackets,
      @JsonKey(name: 'sent_spam_messages') required this.sentSpamMessages,
      @JsonKey(name: 'validated_messages') required this.validatedMessages});

  factory _$_ServerMetrics.fromJson(Map<String, dynamic> json) =>
      _$_$_ServerMetricsFromJson(json);

  @override
  @JsonKey(name: 'all_msgs')
  final double allMsgs;
  @override
  @JsonKey(name: 'new_msgs')
  final double newMsgs;
  @override
  @JsonKey(name: 'known_msgs')
  final double knownMsgs;
  @override
  @JsonKey(name: 'invalid_msgs')
  final double invalidMsgs;
  @override
  @JsonKey(name: 'invalid_req')
  final double invalidReq;
  @override
  @JsonKey(name: 'rec_msg_req')
  final double recMsgReq;
  @override
  @JsonKey(name: 'rec_ms_req')
  final double recMsReq;
  @override
  @JsonKey(name: 'rec_heartbeat')
  final double recHeartbeat;
  @override
  @JsonKey(name: 'sent_msgs')
  final double sentMsgs;
  @override
  @JsonKey(name: 'sent_msg_req')
  final double sentMsgReq;
  @override
  @JsonKey(name: 'sent_ms_req')
  final double sentMsReq;
  @override
  @JsonKey(name: 'sent_heartbeat')
  final double sentHeartbeat;
  @override
  @JsonKey(name: 'dropped_sent_packets')
  final double droppedSentPackets;
  @override
  @JsonKey(name: 'sent_spam_messages')
  final double sentSpamMessages;
  @override
  @JsonKey(name: 'validated_messages')
  final double validatedMessages;

  @override
  String toString() {
    return 'ServerMetrics(allMsgs: $allMsgs, newMsgs: $newMsgs, knownMsgs: $knownMsgs, invalidMsgs: $invalidMsgs, invalidReq: $invalidReq, recMsgReq: $recMsgReq, recMsReq: $recMsReq, recHeartbeat: $recHeartbeat, sentMsgs: $sentMsgs, sentMsgReq: $sentMsgReq, sentMsReq: $sentMsReq, sentHeartbeat: $sentHeartbeat, droppedSentPackets: $droppedSentPackets, sentSpamMessages: $sentSpamMessages, validatedMessages: $validatedMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ServerMetrics &&
            (identical(other.allMsgs, allMsgs) ||
                const DeepCollectionEquality()
                    .equals(other.allMsgs, allMsgs)) &&
            (identical(other.newMsgs, newMsgs) ||
                const DeepCollectionEquality()
                    .equals(other.newMsgs, newMsgs)) &&
            (identical(other.knownMsgs, knownMsgs) ||
                const DeepCollectionEquality()
                    .equals(other.knownMsgs, knownMsgs)) &&
            (identical(other.invalidMsgs, invalidMsgs) ||
                const DeepCollectionEquality()
                    .equals(other.invalidMsgs, invalidMsgs)) &&
            (identical(other.invalidReq, invalidReq) ||
                const DeepCollectionEquality()
                    .equals(other.invalidReq, invalidReq)) &&
            (identical(other.recMsgReq, recMsgReq) ||
                const DeepCollectionEquality()
                    .equals(other.recMsgReq, recMsgReq)) &&
            (identical(other.recMsReq, recMsReq) ||
                const DeepCollectionEquality()
                    .equals(other.recMsReq, recMsReq)) &&
            (identical(other.recHeartbeat, recHeartbeat) ||
                const DeepCollectionEquality()
                    .equals(other.recHeartbeat, recHeartbeat)) &&
            (identical(other.sentMsgs, sentMsgs) ||
                const DeepCollectionEquality()
                    .equals(other.sentMsgs, sentMsgs)) &&
            (identical(other.sentMsgReq, sentMsgReq) ||
                const DeepCollectionEquality()
                    .equals(other.sentMsgReq, sentMsgReq)) &&
            (identical(other.sentMsReq, sentMsReq) ||
                const DeepCollectionEquality()
                    .equals(other.sentMsReq, sentMsReq)) &&
            (identical(other.sentHeartbeat, sentHeartbeat) ||
                const DeepCollectionEquality()
                    .equals(other.sentHeartbeat, sentHeartbeat)) &&
            (identical(other.droppedSentPackets, droppedSentPackets) ||
                const DeepCollectionEquality()
                    .equals(other.droppedSentPackets, droppedSentPackets)) &&
            (identical(other.sentSpamMessages, sentSpamMessages) ||
                const DeepCollectionEquality()
                    .equals(other.sentSpamMessages, sentSpamMessages)) &&
            (identical(other.validatedMessages, validatedMessages) ||
                const DeepCollectionEquality()
                    .equals(other.validatedMessages, validatedMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(allMsgs) ^
      const DeepCollectionEquality().hash(newMsgs) ^
      const DeepCollectionEquality().hash(knownMsgs) ^
      const DeepCollectionEquality().hash(invalidMsgs) ^
      const DeepCollectionEquality().hash(invalidReq) ^
      const DeepCollectionEquality().hash(recMsgReq) ^
      const DeepCollectionEquality().hash(recMsReq) ^
      const DeepCollectionEquality().hash(recHeartbeat) ^
      const DeepCollectionEquality().hash(sentMsgs) ^
      const DeepCollectionEquality().hash(sentMsgReq) ^
      const DeepCollectionEquality().hash(sentMsReq) ^
      const DeepCollectionEquality().hash(sentHeartbeat) ^
      const DeepCollectionEquality().hash(droppedSentPackets) ^
      const DeepCollectionEquality().hash(sentSpamMessages) ^
      const DeepCollectionEquality().hash(validatedMessages);

  @JsonKey(ignore: true)
  @override
  _$ServerMetricsCopyWith<_ServerMetrics> get copyWith =>
      __$ServerMetricsCopyWithImpl<_ServerMetrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ServerMetricsToJson(this);
  }
}

abstract class _ServerMetrics implements ServerMetrics {
  factory _ServerMetrics(
      {@JsonKey(name: 'all_msgs')
          required double allMsgs,
      @JsonKey(name: 'new_msgs')
          required double newMsgs,
      @JsonKey(name: 'known_msgs')
          required double knownMsgs,
      @JsonKey(name: 'invalid_msgs')
          required double invalidMsgs,
      @JsonKey(name: 'invalid_req')
          required double invalidReq,
      @JsonKey(name: 'rec_msg_req')
          required double recMsgReq,
      @JsonKey(name: 'rec_ms_req')
          required double recMsReq,
      @JsonKey(name: 'rec_heartbeat')
          required double recHeartbeat,
      @JsonKey(name: 'sent_msgs')
          required double sentMsgs,
      @JsonKey(name: 'sent_msg_req')
          required double sentMsgReq,
      @JsonKey(name: 'sent_ms_req')
          required double sentMsReq,
      @JsonKey(name: 'sent_heartbeat')
          required double sentHeartbeat,
      @JsonKey(name: 'dropped_sent_packets')
          required double droppedSentPackets,
      @JsonKey(name: 'sent_spam_messages')
          required double sentSpamMessages,
      @JsonKey(name: 'validated_messages')
          required double validatedMessages}) = _$_ServerMetrics;

  factory _ServerMetrics.fromJson(Map<String, dynamic> json) =
      _$_ServerMetrics.fromJson;

  @override
  @JsonKey(name: 'all_msgs')
  double get allMsgs => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'new_msgs')
  double get newMsgs => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'known_msgs')
  double get knownMsgs => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'invalid_msgs')
  double get invalidMsgs => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'invalid_req')
  double get invalidReq => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rec_msg_req')
  double get recMsgReq => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rec_ms_req')
  double get recMsReq => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rec_heartbeat')
  double get recHeartbeat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sent_msgs')
  double get sentMsgs => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sent_msg_req')
  double get sentMsgReq => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sent_ms_req')
  double get sentMsReq => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sent_heartbeat')
  double get sentHeartbeat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'dropped_sent_packets')
  double get droppedSentPackets => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'sent_spam_messages')
  double get sentSpamMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'validated_messages')
  double get validatedMessages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ServerMetricsCopyWith<_ServerMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}
