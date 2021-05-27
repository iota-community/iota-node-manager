// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tips.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tips _$TipsFromJson(Map<String, dynamic> json) {
  return _Tips.fromJson(json);
}

/// @nodoc
class _$TipsTearOff {
  const _$TipsTearOff();

  _Tips call({@JsonKey(name: 'data') TipsData? data}) {
    return _Tips(
      data: data,
    );
  }

  Tips fromJson(Map<String, Object> json) {
    return Tips.fromJson(json);
  }
}

/// @nodoc
const $Tips = _$TipsTearOff();

/// @nodoc
mixin _$Tips {
  @JsonKey(name: 'data')
  TipsData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipsCopyWith<Tips> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsCopyWith<$Res> {
  factory $TipsCopyWith(Tips value, $Res Function(Tips) then) =
      _$TipsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') TipsData? data});

  $TipsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TipsCopyWithImpl<$Res> implements $TipsCopyWith<$Res> {
  _$TipsCopyWithImpl(this._value, this._then);

  final Tips _value;
  // ignore: unused_field
  final $Res Function(Tips) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TipsData?,
    ));
  }

  @override
  $TipsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TipsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$TipsCopyWith<$Res> implements $TipsCopyWith<$Res> {
  factory _$TipsCopyWith(_Tips value, $Res Function(_Tips) then) =
      __$TipsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') TipsData? data});

  @override
  $TipsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$TipsCopyWithImpl<$Res> extends _$TipsCopyWithImpl<$Res>
    implements _$TipsCopyWith<$Res> {
  __$TipsCopyWithImpl(_Tips _value, $Res Function(_Tips) _then)
      : super(_value, (v) => _then(v as _Tips));

  @override
  _Tips get _value => super._value as _Tips;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Tips(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TipsData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tips implements _Tips {
  _$_Tips({@JsonKey(name: 'data') this.data});

  factory _$_Tips.fromJson(Map<String, dynamic> json) =>
      _$_$_TipsFromJson(json);

  @override
  @JsonKey(name: 'data')
  final TipsData? data;

  @override
  String toString() {
    return 'Tips(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tips &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$TipsCopyWith<_Tips> get copyWith =>
      __$TipsCopyWithImpl<_Tips>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TipsToJson(this);
  }
}

abstract class _Tips implements Tips {
  factory _Tips({@JsonKey(name: 'data') TipsData? data}) = _$_Tips;

  factory _Tips.fromJson(Map<String, dynamic> json) = _$_Tips.fromJson;

  @override
  @JsonKey(name: 'data')
  TipsData? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TipsCopyWith<_Tips> get copyWith => throw _privateConstructorUsedError;
}
