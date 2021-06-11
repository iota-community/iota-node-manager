import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockNodeRepository extends Mock implements NodeRepository {}

void main() {
  late NodeRepository _nodeRepository;

  setUpAll(() {
    _nodeRepository = MockNodeRepository();
  });

  var dummyNode = Node(id: 1, name: 'name', url: 'url');
  var secondDummyNode = Node(id: 2, name: 'name', url: 'url');

  NodeRepository fakeReturnValuesForHappyFlow(NodeRepository _nodeRepository) {
    when(() => _nodeRepository.getSelectedNode())
        .thenAnswer((_) async => dummyNode);
    when(() => _nodeRepository.getNodes()).thenAnswer((_) async => [dummyNode]);
    when(() => _nodeRepository.getNodesStream())
        .thenAnswer((_) => Stream.value([dummyNode]));
    when(() => _nodeRepository.getSelectedNodeStream())
        .thenAnswer((_) => Stream.value(dummyNode));
    return _nodeRepository;
  }

  var initalEmptyNodeState = const NodeState(
    nodes: [],
    selectedNode: null,
    status: NodeStatusEnum.initial,
  );

  group('NodeCubit', () {
    test('initial state returns empty state', () {
      expect(NodeCubit(_nodeRepository).state, equals(initalEmptyNodeState));
    });
    group('initState', () {
      blocTest<NodeCubit, NodeState>(
        'emits nodeSelected if atleast one node exists and was selected',
        build: () {
          return NodeCubit(fakeReturnValuesForHappyFlow(_nodeRepository));
        },
        act: (cubit) => cubit.initState(),
        expect: () {
          var expectedNodeState = NodeState(
            nodes: [dummyNode],
            selectedNode: dummyNode,
            status: NodeStatusEnum.nodeSelected,
          );

          return [equals(expectedNodeState)];
        },
      );

      blocTest<NodeCubit, NodeState>(
        'emits noNodeSelected if atleast one node exists but none is selected',
        build: () {
          when(() => _nodeRepository.getSelectedNode())
              .thenAnswer((_) async => null);
          when(() => _nodeRepository.getNodes())
              .thenAnswer((_) async => [dummyNode]);
          when(() => _nodeRepository.getNodesStream())
              .thenAnswer((_) => Stream.value([dummyNode]));
          when(() => _nodeRepository.getSelectedNodeStream())
              .thenAnswer((_) => Stream.value(null));
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit.initState(),
        expect: () {
          var expectedNodeState = NodeState(
            nodes: [dummyNode],
            selectedNode: null,
            status: NodeStatusEnum.noNodeSelected,
          );

          return [equals(expectedNodeState)];
        },
      );

      blocTest<NodeCubit, NodeState>(
        'emits noNodeAdded if no node exists and none is selected',
        build: () {
          when(() => _nodeRepository.getSelectedNode())
              .thenAnswer((_) async => null);
          when(() => _nodeRepository.getNodes()).thenAnswer((_) async => []);
          when(() => _nodeRepository.getNodesStream())
              .thenAnswer((_) => Stream.value([]));
          when(() => _nodeRepository.getSelectedNodeStream())
              .thenAnswer((_) => Stream.value(null));
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit.initState(),
        expect: () {
          var expectedNodeState = const NodeState(
            nodes: [],
            selectedNode: null,
            status: NodeStatusEnum.noNodeAdded,
          );

          return [equals(expectedNodeState)];
        },
      );
    });

    group('selectedNodeChanged', () {
      blocTest<NodeCubit, NodeState>(
        'selects a new primary node',
        build: () {
          _nodeRepository = fakeReturnValuesForHappyFlow(_nodeRepository);
          when(() => _nodeRepository.setSelectedNode(any()))
              .thenAnswer((_) async => dummyNode);
          when(() => _nodeRepository.getSelectedNode())
              .thenAnswer((_) async => dummyNode);
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit
          ..initState()
          ..selectedNodeChanged(dummyNode.id),
        verify: (_) {
          verify(() => _nodeRepository.setSelectedNode(dummyNode.id)).called(1);
        },
      );
    });

    group('nodeAdded', () {
      blocTest<NodeCubit, NodeState>(
        'adds a new node to the list',
        build: () {
          _nodeRepository = fakeReturnValuesForHappyFlow(_nodeRepository);
          when(() => _nodeRepository.addNode(
                  dummyNode.name, dummyNode.url, dummyNode.jwtToken!))
              .thenAnswer((_) async => dummyNode);
          when(() => _nodeRepository.setSelectedNode(dummyNode.id))
              .thenAnswer((_) async => {});
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit
          ..initState()
          ..nodeAdded(dummyNode),
        verify: (_) {
          verify(() => _nodeRepository.addNode(
              dummyNode.name, dummyNode.url, dummyNode.jwtToken!)).called(1);
          verify(() => _nodeRepository.setSelectedNode(dummyNode.id)).called(1);
        },
      );
    });

    group('nodeRemoved', () {
      blocTest<NodeCubit, NodeState>(
        'removes the specific node from the list',
        build: () {
          _nodeRepository = fakeReturnValuesForHappyFlow(_nodeRepository);
          when(() => _nodeRepository.setSelectedNode(any()))
              .thenAnswer((_) async => {});
          when(() => _nodeRepository.removeNode(dummyNode.id))
              .thenAnswer((_) async => {});
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit
          ..initState()
          ..nodeRemoved(dummyNode.id),
        verify: (_) {
          verify(() => _nodeRepository.removeNode(dummyNode.id)).called(1);
          verify(() => _nodeRepository.setSelectedNode(null)).called(1);
        },
      );

      blocTest<NodeCubit, NodeState>(
        'removes the currently selected node and selects a new one',
        build: () {
          when(() => _nodeRepository.getSelectedNode())
              .thenAnswer((_) async => dummyNode);
          when(() => _nodeRepository.getNodes())
              .thenAnswer((_) async => [dummyNode, secondDummyNode]);
          when(() => _nodeRepository.getNodesStream())
              .thenAnswer((_) => Stream.value([dummyNode, secondDummyNode]));
          when(() => _nodeRepository.getSelectedNodeStream())
              .thenAnswer((_) => Stream.value(dummyNode));
          when(() => _nodeRepository.setSelectedNode(secondDummyNode.id))
              .thenAnswer((_) async => {});
          when(() => _nodeRepository.removeNode(dummyNode.id))
              .thenAnswer((_) async => {});
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit
          ..initState()
          ..nodeRemoved(dummyNode.id),
        verify: (_) {
          verify(() => _nodeRepository.removeNode(dummyNode.id)).called(1);
          verify(() => _nodeRepository.setSelectedNode(secondDummyNode.id))
              .called(1);
        },
      );
    });

    group('updateStatus', () {
      blocTest<NodeCubit, NodeState>(
        'emits the new status',
        build: () {
          _nodeRepository = fakeReturnValuesForHappyFlow(_nodeRepository);
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit
          ..initState()
          ..updateStatus(NodeStatusEnum.noNodeAdded),
        expect: () {
          var initialNodeState = const NodeState(
            nodes: [],
            selectedNode: null,
            status: NodeStatusEnum.noNodeAdded,
          );
          var expectedNodeState = NodeState(
            nodes: [dummyNode],
            selectedNode: dummyNode,
            status: NodeStatusEnum.nodeSelected,
          );

          return [equals(initialNodeState), equals(expectedNodeState)];
        },
      );
    });
  });
}
