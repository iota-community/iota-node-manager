import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:hornet_node/app/app_wrapper_page.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/features/initial_node/initial_node.dart';
import 'package:hornet_node/features/node_overview/node_overview.dart';
import 'package:hornet_node/features/node_wrapper/node_wrapper_page.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:mocktail/mocktail.dart';

import '../helpers/helpers.dart';

class MockNodeCubit extends MockCubit<NodeState> implements NodeCubit {}

class MockInitialNodeCubit extends MockCubit<InitialNodeState>
    implements InitialNodeCubit {}

class FakeNodeCubitState extends Fake implements NodeState {}

class FakeInitialNodeCubitState extends Fake implements InitialNodeState {}

void main() {
  setUpAll(() {
    registerFallbackValue<NodeState>(FakeNodeCubitState());
    registerFallbackValue<InitialNodeState>(FakeInitialNodeCubitState());
  });
  group('AppWrapperPage', () {
    late NodeCubit nodeCubit;
    late InitialNodeCubit initialNodeCubit;

    setUp(() {
      nodeCubit = MockNodeCubit();
      initialNodeCubit = MockInitialNodeCubit();
    });
    testWidgets('renders NodeWrapperPage', (tester) async {
      var dummyNode = Node(id: 1, name: 'name', url: 'url');

      var state = NodeState(
          selectedNode: dummyNode,
          nodes: [dummyNode],
          status: NodeStatusEnum.nodeSelected);

      when(() => nodeCubit.state).thenReturn(state);
      await tester.pumpApp(
        BlocProvider.value(
          value: nodeCubit,
          child: const AppWrapperPage(),
        ),
      );
      expect(find.byType(NodeWrapperPage), findsOneWidget);
    });

    testWidgets('renders InitialNodePage', (tester) async {
      var dummyNode = Node(id: 1, name: 'name', url: 'url');

      var nodeCubitState = NodeState(
          selectedNode: dummyNode,
          nodes: [dummyNode],
          status: NodeStatusEnum.noNodeAdded);
      when(() => nodeCubit.state).thenReturn(nodeCubitState);
      var initialNodeCubitState = InitialNodeState.initial();
      when(() => initialNodeCubit.state).thenReturn(initialNodeCubitState);
      getIt.registerSingleton<InitialNodeCubit>(initialNodeCubit);

      await tester.pumpApp(
        BlocProvider.value(
          value: nodeCubit,
          child: BlocProvider.value(
            value: initialNodeCubit,
            child: const AppWrapperPage(),
          ),
        ),
      );
      expect(find.byType(InitialNodePage), findsOneWidget);
    });

    testWidgets('renders NodeOverviewPage', (tester) async {
      var dummyNode = Node(id: 1, name: 'name', url: 'url');

      var state = NodeState(
          selectedNode: dummyNode,
          nodes: [dummyNode],
          status: NodeStatusEnum.noNodeSelected);

      when(() => nodeCubit.state).thenReturn(state);
      await tester.pumpApp(
        BlocProvider.value(
          value: nodeCubit,
          child: const AppWrapperPage(),
        ),
      );
      expect(find.byType(NodeOverviewPage), findsOneWidget);
    });

    testWidgets('renders initial state loading page', (tester) async {
      var dummyNode = Node(id: 1, name: 'name', url: 'url');

      var state = NodeState(
          selectedNode: dummyNode,
          nodes: [dummyNode],
          status: NodeStatusEnum.initial);

      when(() => nodeCubit.state).thenReturn(state);
      when(() => nodeCubit.initState()).thenAnswer((_) async => {});
      await tester.pumpApp(
        BlocProvider.value(
          value: nodeCubit,
          child: const AppWrapperPage(),
        ),
      );
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}
