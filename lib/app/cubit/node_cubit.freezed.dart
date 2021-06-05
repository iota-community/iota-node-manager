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
      {required Node? selectedNode,
      required List<Node> nodes,
      required NodeStatusEnum status}) {
    return _NodeState(
      selectedNode: selectedNode,
      nodes: nodes,
      status: status,
    );
  }
}

/// @nodoc
const $NodeState = _$NodeStateTearOff();

/// @nodoc
mixin _$NodeState {
  Node? get selectedNode => throw _privateConstructorUsedError;
  List<Node> get nodes => throw _privateConstructorUsedError;
  NodeStatusEnum get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NodeStateCopyWith<NodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeStateCopyWith<$Res> {
  factory $NodeStateCopyWith(NodeState value, $Res Function(NodeState) then) =
      _$NodeStateCopyWithImpl<$Res>;
  $Res call({Node? selectedNode, List<Node> nodes, NodeStatusEnum status});
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
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      selectedNode: selectedNode == freezed
          ? _value.selectedNode
          : selectedNode // ignore: cast_nullable_to_non_nullable
              as Node?,
      nodes: nodes == freezed
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<Node>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NodeStatusEnum,
    ));
  }
}

/// @nodoc
abstract class _$NodeStateCopyWith<$Res> implements $NodeStateCopyWith<$Res> {
  factory _$NodeStateCopyWith(
          _NodeState value, $Res Function(_NodeState) then) =
      __$NodeStateCopyWithImpl<$Res>;
  @override
  $Res call({Node? selectedNode, List<Node> nodes, NodeStatusEnum status});
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
    Object? status = freezed,
  }) {
    return _then(_NodeState(
      selectedNode: selectedNode == freezed
          ? _value.selectedNode
          : selectedNode // ignore: cast_nullable_to_non_nullable
              as Node?,
      nodes: nodes == freezed
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<Node>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NodeStatusEnum,
    ));
  }
}

/// @nodoc

class _$_NodeState implements _NodeState {
  const _$_NodeState(
      {required this.selectedNode, required this.nodes, required this.status});

  @override
  final Node? selectedNode;
  @override
  final List<Node> nodes;
  @override
  final NodeStatusEnum status;

  @override
  String toString() {
    return 'NodeState(selectedNode: $selectedNode, nodes: $nodes, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NodeState &&
            (identical(other.selectedNode, selectedNode) ||
                const DeepCollectionEquality()
                    .equals(other.selectedNode, selectedNode)) &&
            (identical(other.nodes, nodes) ||
                const DeepCollectionEquality().equals(other.nodes, nodes)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(selectedNode) ^
      const DeepCollectionEquality().hash(nodes) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$NodeStateCopyWith<_NodeState> get copyWith =>
      __$NodeStateCopyWithImpl<_NodeState>(this, _$identity);
}

abstract class _NodeState implements NodeState {
  const factory _NodeState(
      {required Node? selectedNode,
      required List<Node> nodes,
      required NodeStatusEnum status}) = _$_NodeState;

  @override
  Node? get selectedNode => throw _privateConstructorUsedError;
  @override
  List<Node> get nodes => throw _privateConstructorUsedError;
  @override
  NodeStatusEnum get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NodeStateCopyWith<_NodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
