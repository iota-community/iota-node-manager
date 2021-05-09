// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'incoming_message_work_units.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IncomingMessageWorkUnits _$IncomingMessageWorkUnitsFromJson(
    Map<String, dynamic> json) {
  return _IncomingMessageWorkUnits.fromJson(json);
}

/// @nodoc
class _$IncomingMessageWorkUnitsTearOff {
  const _$IncomingMessageWorkUnitsTearOff();

  _IncomingMessageWorkUnits call(
      {@JsonKey(name: 'size') required double size}) {
    return _IncomingMessageWorkUnits(
      size: size,
    );
  }

  IncomingMessageWorkUnits fromJson(Map<String, Object> json) {
    return IncomingMessageWorkUnits.fromJson(json);
  }
}

/// @nodoc
const $IncomingMessageWorkUnits = _$IncomingMessageWorkUnitsTearOff();

/// @nodoc
mixin _$IncomingMessageWorkUnits {
  @JsonKey(name: 'size')
  double get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IncomingMessageWorkUnitsCopyWith<IncomingMessageWorkUnits> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IncomingMessageWorkUnitsCopyWith<$Res> {
  factory $IncomingMessageWorkUnitsCopyWith(IncomingMessageWorkUnits value,
          $Res Function(IncomingMessageWorkUnits) then) =
      _$IncomingMessageWorkUnitsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'size') double size});
}

/// @nodoc
class _$IncomingMessageWorkUnitsCopyWithImpl<$Res>
    implements $IncomingMessageWorkUnitsCopyWith<$Res> {
  _$IncomingMessageWorkUnitsCopyWithImpl(this._value, this._then);

  final IncomingMessageWorkUnits _value;
  // ignore: unused_field
  final $Res Function(IncomingMessageWorkUnits) _then;

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
abstract class _$IncomingMessageWorkUnitsCopyWith<$Res>
    implements $IncomingMessageWorkUnitsCopyWith<$Res> {
  factory _$IncomingMessageWorkUnitsCopyWith(_IncomingMessageWorkUnits value,
          $Res Function(_IncomingMessageWorkUnits) then) =
      __$IncomingMessageWorkUnitsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'size') double size});
}

/// @nodoc
class __$IncomingMessageWorkUnitsCopyWithImpl<$Res>
    extends _$IncomingMessageWorkUnitsCopyWithImpl<$Res>
    implements _$IncomingMessageWorkUnitsCopyWith<$Res> {
  __$IncomingMessageWorkUnitsCopyWithImpl(_IncomingMessageWorkUnits _value,
      $Res Function(_IncomingMessageWorkUnits) _then)
      : super(_value, (v) => _then(v as _IncomingMessageWorkUnits));

  @override
  _IncomingMessageWorkUnits get _value =>
      super._value as _IncomingMessageWorkUnits;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_IncomingMessageWorkUnits(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IncomingMessageWorkUnits implements _IncomingMessageWorkUnits {
  _$_IncomingMessageWorkUnits({@JsonKey(name: 'size') required this.size});

  factory _$_IncomingMessageWorkUnits.fromJson(Map<String, dynamic> json) =>
      _$_$_IncomingMessageWorkUnitsFromJson(json);

  @override
  @JsonKey(name: 'size')
  final double size;

  @override
  String toString() {
    return 'IncomingMessageWorkUnits(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncomingMessageWorkUnits &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$IncomingMessageWorkUnitsCopyWith<_IncomingMessageWorkUnits> get copyWith =>
      __$IncomingMessageWorkUnitsCopyWithImpl<_IncomingMessageWorkUnits>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IncomingMessageWorkUnitsToJson(this);
  }
}

abstract class _IncomingMessageWorkUnits implements IncomingMessageWorkUnits {
  factory _IncomingMessageWorkUnits(
          {@JsonKey(name: 'size') required double size}) =
      _$_IncomingMessageWorkUnits;

  factory _IncomingMessageWorkUnits.fromJson(Map<String, dynamic> json) =
      _$_IncomingMessageWorkUnits.fromJson;

  @override
  @JsonKey(name: 'size')
  double get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$IncomingMessageWorkUnitsCopyWith<_IncomingMessageWorkUnits> get copyWith =>
      throw _privateConstructorUsedError;
}
