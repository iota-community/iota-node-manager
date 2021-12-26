import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late NodeRepository _nodeRepository;

  setUpAll(() {
    _nodeRepository = MockNodeRepository();
  });

  final secondNode =
      node.copyWith(id: 2, name: 'Second', url: 'https//second.test.com');

  NodeRepository fakeReturnValuesForHappyFlow(NodeRepository _nodeRepository) {
    when(() => _nodeRepository.getSelectedNode()).thenAnswer((_) async => node);
    when(() => _nodeRepository.getNodes()).thenAnswer((_) async => [node]);
    when(() => _nodeRepository.getNodesStream())
        .thenAnswer((_) => Stream.value([node]));
    when(() => _nodeRepository.getSelectedNodeStream())
        .thenAnswer((_) => Stream.value(node));
    return _nodeRepository;
  }

  const initalEmptyNodeState = NodeState(
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
          final expectedNodeState = NodeState(
            nodes: [node],
            selectedNode: node,
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
              .thenAnswer((_) async => [node]);
          when(() => _nodeRepository.getNodesStream())
              .thenAnswer((_) => Stream.value([node]));
          when(() => _nodeRepository.getSelectedNodeStream())
              .thenAnswer((_) => Stream.value(null));
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit.initState(),
        expect: () {
          final expectedNodeState = NodeState(
            nodes: [node],
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
          const expectedNodeState = NodeState(
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
              .thenAnswer((_) async => node);
          when(() => _nodeRepository.getSelectedNode())
              .thenAnswer((_) async => node);
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit
          ..initState()
          ..selectedNodeChanged(node.id),
        verify: (_) {
          verify(() => _nodeRepository.setSelectedNode(node.id)).called(1);
        },
      );
    });

    group('nodeAdded', () {
      blocTest<NodeCubit, NodeState>(
        'adds a new node to the list',
        build: () {
          _nodeRepository = fakeReturnValuesForHappyFlow(_nodeRepository);
          when(() => _nodeRepository.addNode(
                node.name,
                node.url,
                node.jwtToken!,
                node.type,
              )).thenAnswer((_) async => node);
          when(() => _nodeRepository.setSelectedNode(node.id))
              .thenAnswer((_) async => <void>{});
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit
          ..initState()
          ..nodeAdded(node),
        verify: (_) {
          verify(() => _nodeRepository.addNode(
                node.name,
                node.url,
                node.jwtToken!,
                node.type,
              )).called(1);
          verify(() => _nodeRepository.setSelectedNode(node.id)).called(1);
        },
      );
    });

    group('nodeRemoved', () {
      blocTest<NodeCubit, NodeState>(
        'removes the specific node from the list',
        build: () {
          _nodeRepository = fakeReturnValuesForHappyFlow(_nodeRepository);
          when(() => _nodeRepository.setSelectedNode(any()))
              .thenAnswer((_) async => <void>{});
          when(() => _nodeRepository.removeNode(node.id))
              .thenAnswer((_) async => <void>{});
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit
          ..initState()
          ..nodeRemoved(node.id),
        verify: (_) {
          verify(() => _nodeRepository.removeNode(node.id)).called(1);
          verify(() => _nodeRepository.setSelectedNode(null)).called(1);
        },
      );

      blocTest<NodeCubit, NodeState>(
        'removes the currently selected node and selects a new one',
        build: () {
          when(() => _nodeRepository.getSelectedNode())
              .thenAnswer((_) async => node);
          when(() => _nodeRepository.getNodes())
              .thenAnswer((_) async => [node, secondNode]);
          when(() => _nodeRepository.getNodesStream())
              .thenAnswer((_) => Stream.value([node, secondNode]));
          when(() => _nodeRepository.getSelectedNodeStream())
              .thenAnswer((_) => Stream.value(node));
          when(() => _nodeRepository.setSelectedNode(secondNode.id))
              .thenAnswer((_) async => <void>{});
          when(() => _nodeRepository.removeNode(node.id))
              .thenAnswer((_) async => <void>{});
          return NodeCubit(_nodeRepository);
        },
        act: (cubit) => cubit
          ..initState()
          ..nodeRemoved(node.id),
        verify: (_) {
          verify(() => _nodeRepository.removeNode(node.id)).called(1);
          verify(() => _nodeRepository.setSelectedNode(secondNode.id))
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
          const initialNodeState = NodeState(
            nodes: [],
            selectedNode: null,
            status: NodeStatusEnum.noNodeAdded,
          );
          final expectedNodeState = NodeState(
            nodes: [node],
            selectedNode: node,
            status: NodeStatusEnum.nodeSelected,
          );

          return [equals(initialNodeState), equals(expectedNodeState)];
        },
      );
    });
  });
}
