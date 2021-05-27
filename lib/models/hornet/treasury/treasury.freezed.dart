// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'treasury.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Treasury _$TreasuryFromJson(Map<String, dynamic> json) {
  return _Treasury.fromJson(json);
}

/// @nodoc
class _$TreasuryTearOff {
  const _$TreasuryTearOff();

  _Treasury call({@JsonKey(name: 'data') TreasuryData? data}) {
    return _Treasury(
      data: data,
    );
  }

  Treasury fromJson(Map<String, Object> json) {
    return Treasury.fromJson(json);
  }
}

/// @nodoc
const $Treasury = _$TreasuryTearOff();

/// @nodoc
mixin _$Treasury {
  @JsonKey(name: 'data')
  TreasuryData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreasuryCopyWith<Treasury> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreasuryCopyWith<$Res> {
  factory $TreasuryCopyWith(Treasury value, $Res Function(Treasury) then) =
      _$TreasuryCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') TreasuryData? data});

  $TreasuryDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$TreasuryCopyWithImpl<$Res> implements $TreasuryCopyWith<$Res> {
  _$TreasuryCopyWithImpl(this._value, this._then);

  final Treasury _value;
  // ignore: unused_field
  final $Res Function(Treasury) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TreasuryData?,
    ));
  }

  @override
  $TreasuryDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $TreasuryDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$TreasuryCopyWith<$Res> implements $TreasuryCopyWith<$Res> {
  factory _$TreasuryCopyWith(_Treasury value, $Res Function(_Treasury) then) =
      __$TreasuryCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') TreasuryData? data});

  @override
  $TreasuryDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$TreasuryCopyWithImpl<$Res> extends _$TreasuryCopyWithImpl<$Res>
    implements _$TreasuryCopyWith<$Res> {
  __$TreasuryCopyWithImpl(_Treasury _value, $Res Function(_Treasury) _then)
      : super(_value, (v) => _then(v as _Treasury));

  @override
  _Treasury get _value => super._value as _Treasury;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Treasury(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TreasuryData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Treasury implements _Treasury {
  _$_Treasury({@JsonKey(name: 'data') this.data});

  factory _$_Treasury.fromJson(Map<String, dynamic> json) =>
      _$_$_TreasuryFromJson(json);

  @override
  @JsonKey(name: 'data')
  final TreasuryData? data;

  @override
  String toString() {
    return 'Treasury(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Treasury &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$TreasuryCopyWith<_Treasury> get copyWith =>
      __$TreasuryCopyWithImpl<_Treasury>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TreasuryToJson(this);
  }
}

abstract class _Treasury implements Treasury {
  factory _Treasury({@JsonKey(name: 'data') TreasuryData? data}) = _$_Treasury;

  factory _Treasury.fromJson(Map<String, dynamic> json) = _$_Treasury.fromJson;

  @override
  @JsonKey(name: 'data')
  TreasuryData? get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TreasuryCopyWith<_Treasury> get copyWith =>
      throw _privateConstructorUsedError;
}
