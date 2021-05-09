// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'caches.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Caches _$CachesFromJson(Map<String, dynamic> json) {
  return _Caches.fromJson(json);
}

/// @nodoc
class _$CachesTearOff {
  const _$CachesTearOff();

  _Caches call(
      {@JsonKey(name: 'request_queue')
          required RequestQueue requestQueue,
      @JsonKey(name: 'children')
          required Children children,
      @JsonKey(name: 'milestones')
          required Milestones milestones,
      @JsonKey(name: 'messages')
          required Messages messages,
      @JsonKey(name: 'incoming_message_work_units')
          required IncomingMessageWorkUnits incomingMessageWorkUnits}) {
    return _Caches(
      requestQueue: requestQueue,
      children: children,
      milestones: milestones,
      messages: messages,
      incomingMessageWorkUnits: incomingMessageWorkUnits,
    );
  }

  Caches fromJson(Map<String, Object> json) {
    return Caches.fromJson(json);
  }
}

/// @nodoc
const $Caches = _$CachesTearOff();

/// @nodoc
mixin _$Caches {
  @JsonKey(name: 'request_queue')
  RequestQueue get requestQueue => throw _privateConstructorUsedError;
  @JsonKey(name: 'children')
  Children get children => throw _privateConstructorUsedError;
  @JsonKey(name: 'milestones')
  Milestones get milestones => throw _privateConstructorUsedError;
  @JsonKey(name: 'messages')
  Messages get messages => throw _privateConstructorUsedError;
  @JsonKey(name: 'incoming_message_work_units')
  IncomingMessageWorkUnits get incomingMessageWorkUnits =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CachesCopyWith<Caches> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachesCopyWith<$Res> {
  factory $CachesCopyWith(Caches value, $Res Function(Caches) then) =
      _$CachesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'request_queue')
          RequestQueue requestQueue,
      @JsonKey(name: 'children')
          Children children,
      @JsonKey(name: 'milestones')
          Milestones milestones,
      @JsonKey(name: 'messages')
          Messages messages,
      @JsonKey(name: 'incoming_message_work_units')
          IncomingMessageWorkUnits incomingMessageWorkUnits});

  $RequestQueueCopyWith<$Res> get requestQueue;
  $ChildrenCopyWith<$Res> get children;
  $MilestonesCopyWith<$Res> get milestones;
  $MessagesCopyWith<$Res> get messages;
  $IncomingMessageWorkUnitsCopyWith<$Res> get incomingMessageWorkUnits;
}

/// @nodoc
class _$CachesCopyWithImpl<$Res> implements $CachesCopyWith<$Res> {
  _$CachesCopyWithImpl(this._value, this._then);

  final Caches _value;
  // ignore: unused_field
  final $Res Function(Caches) _then;

  @override
  $Res call({
    Object? requestQueue = freezed,
    Object? children = freezed,
    Object? milestones = freezed,
    Object? messages = freezed,
    Object? incomingMessageWorkUnits = freezed,
  }) {
    return _then(_value.copyWith(
      requestQueue: requestQueue == freezed
          ? _value.requestQueue
          : requestQueue // ignore: cast_nullable_to_non_nullable
              as RequestQueue,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as Children,
      milestones: milestones == freezed
          ? _value.milestones
          : milestones // ignore: cast_nullable_to_non_nullable
              as Milestones,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Messages,
      incomingMessageWorkUnits: incomingMessageWorkUnits == freezed
          ? _value.incomingMessageWorkUnits
          : incomingMessageWorkUnits // ignore: cast_nullable_to_non_nullable
              as IncomingMessageWorkUnits,
    ));
  }

  @override
  $RequestQueueCopyWith<$Res> get requestQueue {
    return $RequestQueueCopyWith<$Res>(_value.requestQueue, (value) {
      return _then(_value.copyWith(requestQueue: value));
    });
  }

  @override
  $ChildrenCopyWith<$Res> get children {
    return $ChildrenCopyWith<$Res>(_value.children, (value) {
      return _then(_value.copyWith(children: value));
    });
  }

  @override
  $MilestonesCopyWith<$Res> get milestones {
    return $MilestonesCopyWith<$Res>(_value.milestones, (value) {
      return _then(_value.copyWith(milestones: value));
    });
  }

  @override
  $MessagesCopyWith<$Res> get messages {
    return $MessagesCopyWith<$Res>(_value.messages, (value) {
      return _then(_value.copyWith(messages: value));
    });
  }

  @override
  $IncomingMessageWorkUnitsCopyWith<$Res> get incomingMessageWorkUnits {
    return $IncomingMessageWorkUnitsCopyWith<$Res>(
        _value.incomingMessageWorkUnits, (value) {
      return _then(_value.copyWith(incomingMessageWorkUnits: value));
    });
  }
}

/// @nodoc
abstract class _$CachesCopyWith<$Res> implements $CachesCopyWith<$Res> {
  factory _$CachesCopyWith(_Caches value, $Res Function(_Caches) then) =
      __$CachesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'request_queue')
          RequestQueue requestQueue,
      @JsonKey(name: 'children')
          Children children,
      @JsonKey(name: 'milestones')
          Milestones milestones,
      @JsonKey(name: 'messages')
          Messages messages,
      @JsonKey(name: 'incoming_message_work_units')
          IncomingMessageWorkUnits incomingMessageWorkUnits});

  @override
  $RequestQueueCopyWith<$Res> get requestQueue;
  @override
  $ChildrenCopyWith<$Res> get children;
  @override
  $MilestonesCopyWith<$Res> get milestones;
  @override
  $MessagesCopyWith<$Res> get messages;
  @override
  $IncomingMessageWorkUnitsCopyWith<$Res> get incomingMessageWorkUnits;
}

/// @nodoc
class __$CachesCopyWithImpl<$Res> extends _$CachesCopyWithImpl<$Res>
    implements _$CachesCopyWith<$Res> {
  __$CachesCopyWithImpl(_Caches _value, $Res Function(_Caches) _then)
      : super(_value, (v) => _then(v as _Caches));

  @override
  _Caches get _value => super._value as _Caches;

  @override
  $Res call({
    Object? requestQueue = freezed,
    Object? children = freezed,
    Object? milestones = freezed,
    Object? messages = freezed,
    Object? incomingMessageWorkUnits = freezed,
  }) {
    return _then(_Caches(
      requestQueue: requestQueue == freezed
          ? _value.requestQueue
          : requestQueue // ignore: cast_nullable_to_non_nullable
              as RequestQueue,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as Children,
      milestones: milestones == freezed
          ? _value.milestones
          : milestones // ignore: cast_nullable_to_non_nullable
              as Milestones,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Messages,
      incomingMessageWorkUnits: incomingMessageWorkUnits == freezed
          ? _value.incomingMessageWorkUnits
          : incomingMessageWorkUnits // ignore: cast_nullable_to_non_nullable
              as IncomingMessageWorkUnits,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Caches implements _Caches {
  _$_Caches(
      {@JsonKey(name: 'request_queue')
          required this.requestQueue,
      @JsonKey(name: 'children')
          required this.children,
      @JsonKey(name: 'milestones')
          required this.milestones,
      @JsonKey(name: 'messages')
          required this.messages,
      @JsonKey(name: 'incoming_message_work_units')
          required this.incomingMessageWorkUnits});

  factory _$_Caches.fromJson(Map<String, dynamic> json) =>
      _$_$_CachesFromJson(json);

  @override
  @JsonKey(name: 'request_queue')
  final RequestQueue requestQueue;
  @override
  @JsonKey(name: 'children')
  final Children children;
  @override
  @JsonKey(name: 'milestones')
  final Milestones milestones;
  @override
  @JsonKey(name: 'messages')
  final Messages messages;
  @override
  @JsonKey(name: 'incoming_message_work_units')
  final IncomingMessageWorkUnits incomingMessageWorkUnits;

  @override
  String toString() {
    return 'Caches(requestQueue: $requestQueue, children: $children, milestones: $milestones, messages: $messages, incomingMessageWorkUnits: $incomingMessageWorkUnits)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Caches &&
            (identical(other.requestQueue, requestQueue) ||
                const DeepCollectionEquality()
                    .equals(other.requestQueue, requestQueue)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)) &&
            (identical(other.milestones, milestones) ||
                const DeepCollectionEquality()
                    .equals(other.milestones, milestones)) &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(
                    other.incomingMessageWorkUnits, incomingMessageWorkUnits) ||
                const DeepCollectionEquality().equals(
                    other.incomingMessageWorkUnits, incomingMessageWorkUnits)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(requestQueue) ^
      const DeepCollectionEquality().hash(children) ^
      const DeepCollectionEquality().hash(milestones) ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(incomingMessageWorkUnits);

  @JsonKey(ignore: true)
  @override
  _$CachesCopyWith<_Caches> get copyWith =>
      __$CachesCopyWithImpl<_Caches>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CachesToJson(this);
  }
}

abstract class _Caches implements Caches {
  factory _Caches(
          {@JsonKey(name: 'request_queue')
              required RequestQueue requestQueue,
          @JsonKey(name: 'children')
              required Children children,
          @JsonKey(name: 'milestones')
              required Milestones milestones,
          @JsonKey(name: 'messages')
              required Messages messages,
          @JsonKey(name: 'incoming_message_work_units')
              required IncomingMessageWorkUnits incomingMessageWorkUnits}) =
      _$_Caches;

  factory _Caches.fromJson(Map<String, dynamic> json) = _$_Caches.fromJson;

  @override
  @JsonKey(name: 'request_queue')
  RequestQueue get requestQueue => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'children')
  Children get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'milestones')
  Milestones get milestones => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'messages')
  Messages get messages => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'incoming_message_work_units')
  IncomingMessageWorkUnits get incomingMessageWorkUnits =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CachesCopyWith<_Caches> get copyWith => throw _privateConstructorUsedError;
}
