// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_queue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestQueue _$RequestQueueFromJson(Map<String, dynamic> json) {
  return _RequestQueue.fromJson(json);
}

/// @nodoc
class _$RequestQueueTearOff {
  const _$RequestQueueTearOff();

  _RequestQueue call({@JsonKey(name: 'size') required double size}) {
    return _RequestQueue(
      size: size,
    );
  }

  RequestQueue fromJson(Map<String, Object> json) {
    return RequestQueue.fromJson(json);
  }
}

/// @nodoc
const $RequestQueue = _$RequestQueueTearOff();

/// @nodoc
mixin _$RequestQueue {
  @JsonKey(name: 'size')
  double get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestQueueCopyWith<RequestQueue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestQueueCopyWith<$Res> {
  factory $RequestQueueCopyWith(
          RequestQueue value, $Res Function(RequestQueue) then) =
      _$RequestQueueCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'size') double size});
}

/// @nodoc
class _$RequestQueueCopyWithImpl<$Res> implements $RequestQueueCopyWith<$Res> {
  _$RequestQueueCopyWithImpl(this._value, this._then);

  final RequestQueue _value;
  // ignore: unused_field
  final $Res Function(RequestQueue) _then;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$RequestQueueCopyWith<$Res>
    implements $RequestQueueCopyWith<$Res> {
  factory _$RequestQueueCopyWith(
          _RequestQueue value, $Res Function(_RequestQueue) then) =
      __$RequestQueueCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'size') double size});
}

/// @nodoc
class __$RequestQueueCopyWithImpl<$Res> extends _$RequestQueueCopyWithImpl<$Res>
    implements _$RequestQueueCopyWith<$Res> {
  __$RequestQueueCopyWithImpl(
      _RequestQueue _value, $Res Function(_RequestQueue) _then)
      : super(_value, (v) => _then(v as _RequestQueue));

  @override
  _RequestQueue get _value => super._value as _RequestQueue;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_RequestQueue(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestQueue implements _RequestQueue {
  _$_RequestQueue({@JsonKey(name: 'size') required this.size});

  factory _$_RequestQueue.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestQueueFromJson(json);

  @override
  @JsonKey(name: 'size')
  final double size;

  @override
  String toString() {
    return 'RequestQueue(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestQueue &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$RequestQueueCopyWith<_RequestQueue> get copyWith =>
      __$RequestQueueCopyWithImpl<_RequestQueue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestQueueToJson(this);
  }
}

abstract class _RequestQueue implements RequestQueue {
  factory _RequestQueue({@JsonKey(name: 'size') required double size}) =
      _$_RequestQueue;

  factory _RequestQueue.fromJson(Map<String, dynamic> json) =
      _$_RequestQueue.fromJson;

  @override
  @JsonKey(name: 'size')
  double get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestQueueCopyWith<_RequestQueue> get copyWith =>
      throw _privateConstructorUsedError;
}
