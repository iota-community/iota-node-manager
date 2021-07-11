import 'package:bloc_test/bloc_test.dart';
import 'package:hive/hive.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/features/initial_node/initial_node.dart';
import 'package:hornet_node/features/node_overview/pages/edit_node/cubit/edit_node_cubit.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockNodeCubit extends MockCubit<NodeState> implements NodeCubit {}

class MockInitialNodeCubit extends MockCubit<InitialNodeState>
    implements InitialNodeCubit {}

class MockEditNodeCubit extends MockCubit<EditNodeState>
    implements EditNodeCubit {}

class FakeNodeCubitState extends Fake implements NodeState {}

class FakeInitialNodeCubitState extends Fake implements InitialNodeState {}

class FakeEditNodeCubitState extends Fake implements EditNodeState {}

class MockNodeRepository extends Mock implements NodeRepository {}

class MockBox extends Mock implements Box {}
