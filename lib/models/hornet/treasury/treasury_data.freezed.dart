// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'treasury_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TreasuryData _$TreasuryDataFromJson(Map<String, dynamic> json) {
  return _TreasuryData.fromJson(json);
}

/// @nodoc
class _$TreasuryDataTearOff {
  const _$TreasuryDataTearOff();

  _TreasuryData call(
      {@JsonKey(name: 'milestoneId') String? milestoneId,
      @JsonKey(name: 'amount') int? amount}) {
    return _TreasuryData(
      milestoneId: milestoneId,
      amount: amount,
    );
  }

  TreasuryData fromJson(Map<String, Object?> json) {
    return TreasuryData.fromJson(json);
  }
}

/// @nodoc
const $TreasuryData = _$TreasuryDataTearOff();

/// @nodoc
mixin _$TreasuryData {
  @JsonKey(name: 'milestoneId')
  String? get milestoneId => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  int? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TreasuryDataCopyWith<TreasuryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreasuryDataCopyWith<$Res> {
  factory $TreasuryDataCopyWith(
          TreasuryData value, $Res Function(TreasuryData) then) =
      _$TreasuryDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'milestoneId') String? milestoneId,
      @JsonKey(name: 'amount') int? amount});
}

/// @nodoc
class _$TreasuryDataCopyWithImpl<$Res> implements $TreasuryDataCopyWith<$Res> {
  _$TreasuryDataCopyWithImpl(this._value, this._then);

  final TreasuryData _value;
  // ignore: unused_field
  final $Res Function(TreasuryData) _then;

  @override
  $Res call({
    Object? milestoneId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      milestoneId: milestoneId == freezed
          ? _value.milestoneId
          : milestoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$TreasuryDataCopyWith<$Res>
    implements $TreasuryDataCopyWith<$Res> {
  factory _$TreasuryDataCopyWith(
          _TreasuryData value, $Res Function(_TreasuryData) then) =
      __$TreasuryDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'milestoneId') String? milestoneId,
      @JsonKey(name: 'amount') int? amount});
}

/// @nodoc
class __$TreasuryDataCopyWithImpl<$Res> extends _$TreasuryDataCopyWithImpl<$Res>
    implements _$TreasuryDataCopyWith<$Res> {
  __$TreasuryDataCopyWithImpl(
      _TreasuryData _value, $Res Function(_TreasuryData) _then)
      : super(_value, (v) => _then(v as _TreasuryData));

  @override
  _TreasuryData get _value => super._value as _TreasuryData;

  @override
  $Res call({
    Object? milestoneId = freezed,
    Object? amount = freezed,
  }) {
    return _then(_TreasuryData(
      milestoneId: milestoneId == freezed
          ? _value.milestoneId
          : milestoneId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TreasuryData implements _TreasuryData {
  _$_TreasuryData(
      {@JsonKey(name: 'milestoneId') this.milestoneId,
      @JsonKey(name: 'amount') this.amount});

  factory _$_TreasuryData.fromJson(Map<String, dynamic> json) =>
      _$$_TreasuryDataFromJson(json);

  @override
  @JsonKey(name: 'milestoneId')
  final String? milestoneId;
  @override
  @JsonKey(name: 'amount')
  final int? amount;

  @override
  String toString() {
    return 'TreasuryData(milestoneId: $milestoneId, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TreasuryData &&
            (identical(other.milestoneId, milestoneId) ||
                other.milestoneId == milestoneId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, milestoneId, amount);

  @JsonKey(ignore: true)
  @override
  _$TreasuryDataCopyWith<_TreasuryData> get copyWith =>
      __$TreasuryDataCopyWithImpl<_TreasuryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TreasuryDataToJson(this);
  }
}

abstract class _TreasuryData implements TreasuryData {
  factory _TreasuryData(
      {@JsonKey(name: 'milestoneId') String? milestoneId,
      @JsonKey(name: 'amount') int? amount}) = _$_TreasuryData;

  factory _TreasuryData.fromJson(Map<String, dynamic> json) =
      _$_TreasuryData.fromJson;

  @override
  @JsonKey(name: 'milestoneId')
  String? get milestoneId;
  @override
  @JsonKey(name: 'amount')
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$TreasuryDataCopyWith<_TreasuryData> get copyWith =>
      throw _privateConstructorUsedError;
}
