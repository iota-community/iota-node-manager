// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'node_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NodeStateTearOff {
  const _$NodeStateTearOff();

  _NodeState call(
      {required HornetNode selectedNode, required List<HornetNode> nodes}) {
    return _NodeState(
      selectedNode: selectedNode,
      nodes: nodes,
    );
  }
}

/// @nodoc
const $NodeState = _$NodeStateTearOff();

/// @nodoc
mixin _$NodeState {
  HornetNode get selectedNode => throw _privateConstructorUsedError;
  List<HornetNode> get nodes => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NodeStateCopyWith<NodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeStateCopyWith<$Res> {
  factory $NodeStateCopyWith(NodeState value, $Res Function(NodeState) then) =
      _$NodeStateCopyWithImpl<$Res>;
  $Res call({HornetNode selectedNode, List<HornetNode> nodes});
}

/// @nodoc
class _$NodeStateCopyWithImpl<$Res> implements $NodeStateCopyWith<$Res> {
  _$NodeStateCopyWithImpl(this._value, this._then);

  final NodeState _value;
  // ignore: unused_field
  final $Res Function(NodeState) _then;

  @override
  $Res call({
    Object? selectedNode = freezed,
    Object? nodes = freezed,
  }) {
    return _then(_value.copyWith(
      selectedNode: selectedNode == freezed
          ? _value.selectedNode
          : selectedNode // ignore: cast_nullable_to_non_nullable
              as HornetNode,
      nodes: nodes == freezed
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<HornetNode>,
    ));
  }
}

/// @nodoc
abstract class _$NodeStateCopyWith<$Res> implements $NodeStateCopyWith<$Res> {
  factory _$NodeStateCopyWith(
          _NodeState value, $Res Function(_NodeState) then) =
      __$NodeStateCopyWithImpl<$Res>;
  @override
  $Res call({HornetNode selectedNode, List<HornetNode> nodes});
}

/// @nodoc
class __$NodeStateCopyWithImpl<$Res> extends _$NodeStateCopyWithImpl<$Res>
    implements _$NodeStateCopyWith<$Res> {
  __$NodeStateCopyWithImpl(_NodeState _value, $Res Function(_NodeState) _then)
      : super(_value, (v) => _then(v as _NodeState));

  @override
  _NodeState get _value => super._value as _NodeState;

  @override
  $Res call({
    Object? selectedNode = freezed,
    Object? nodes = freezed,
  }) {
    return _then(_NodeState(
      selectedNode: selectedNode == freezed
          ? _value.selectedNode
          : selectedNode // ignore: cast_nullable_to_non_nullable
              as HornetNode,
      nodes: nodes == freezed
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<HornetNode>,
    ));
  }
}

/// @nodoc

class _$_NodeState implements _NodeState {
  const _$_NodeState({required this.selectedNode, required this.nodes});

  @override
  final HornetNode selectedNode;
  @override
  final List<HornetNode> nodes;

  @override
  String toString() {
    return 'NodeState(selectedNode: $selectedNode, nodes: $nodes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NodeState &&
            (identical(other.selectedNode, selectedNode) ||
                const DeepCollectionEquality()
                    .equals(other.selectedNode, selectedNode)) &&
            (identical(other.nodes, nodes) ||
                const DeepCollectionEquality().equals(other.nodes, nodes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedNode) ^
      const DeepCollectionEquality().hash(nodes);

  @JsonKey(ignore: true)
  @override
  _$NodeStateCopyWith<_NodeState> get copyWith =>
      __$NodeStateCopyWithImpl<_NodeState>(this, _$identity);
}

abstract class _NodeState implements NodeState {
  const factory _NodeState(
      {required HornetNode selectedNode,
      required List<HornetNode> nodes}) = _$_NodeState;

  @override
  HornetNode get selectedNode => throw _privateConstructorUsedError;
  @override
  List<HornetNode> get nodes => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NodeStateCopyWith<_NodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
