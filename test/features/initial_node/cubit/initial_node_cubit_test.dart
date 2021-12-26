import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:hornet_node/features/initial_node/cubit/initial_node_cubit.dart';
import 'package:hornet_node/repository/moor/constants/node_types.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/formz/jwt.dart';
import 'package:hornet_node/utils/formz/name.dart';
import 'package:hornet_node/utils/formz/type.dart';
import 'package:hornet_node/utils/formz/url.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late NodeRepository _nodeRepository;

  setUpAll(() {
    _nodeRepository = MockNodeRepository();
  });
  tearDown(() {});

  group('InitialNodeCubit', () {
    setUp(() {});
    blocTest<InitialNodeCubit, InitialNodeState>(
      'emits the state with a new name and form invalid status',
      build: () {
        return InitialNodeCubit(_nodeRepository);
      },
      act: (cubit) => cubit..nameChanged(node.name),
      expect: () => [
        InitialNodeState.initial().copyWith(
            name: Name.dirty(value: node.name), status: FormzStatus.invalid)
      ],
    );
    blocTest<InitialNodeCubit, InitialNodeState>(
      'emits the state with a new url and form invalid status',
      build: () {
        return InitialNodeCubit(_nodeRepository);
      },
      act: (cubit) => cubit..urlChanged(node.url),
      expect: () => [
        InitialNodeState.initial().copyWith(
            url: Url.dirty(value: node.url), status: FormzStatus.invalid)
      ],
    );

    blocTest<InitialNodeCubit, InitialNodeState>(
      'emits the state with a new jwt and form invalid status',
      build: () {
        return InitialNodeCubit(_nodeRepository);
      },
      act: (cubit) => cubit..jwtChanged(node.jwtToken!),
      expect: () => [
        InitialNodeState.initial().copyWith(
            jwt: Jwt.dirty(value: node.jwtToken!), status: FormzStatus.invalid)
      ],
    );
    blocTest<InitialNodeCubit, InitialNodeState>(
      'emits submission on progress and success after saving',
      build: () {
        when(() => _nodeRepository.addNode(
              node.name,
              node.url,
              node.jwtToken!,
              node.type,
            )).thenAnswer((_) async => node);
        when(() => _nodeRepository.setSelectedNode(node.id))
            .thenAnswer((_) async => <void>{});
        return InitialNodeCubit(_nodeRepository);
      },
      seed: () => InitialNodeState(
        name: Name.dirty(value: node.name),
        url: Url.dirty(value: node.url),
        jwt: Jwt.dirty(value: node.jwtToken!),
        type: Type.dirty(value: NodeTypes.values[node.type]),
        status: FormzStatus.valid,
      ),
      act: (cubit) => cubit..saveNode(),
      expect: () => [
        InitialNodeState(
          name: Name.dirty(value: node.name),
          url: Url.dirty(value: node.url),
          jwt: Jwt.dirty(value: node.jwtToken!),
          type: Type.dirty(value: NodeTypes.values[node.type]),
          status: FormzStatus.submissionInProgress,
        ),
        InitialNodeState(
          name: Name.dirty(value: node.name),
          url: Url.dirty(value: node.url),
          jwt: Jwt.dirty(value: node.jwtToken!),
          type: Type.dirty(value: NodeTypes.values[node.type]),
          status: FormzStatus.submissionSuccess,
        ),
      ],
    );

    blocTest<InitialNodeCubit, InitialNodeState>(
      'emits submission on progress and failure after saving failed',
      build: () {
        when(() => _nodeRepository.addNode(
              node.name,
              node.url,
              node.jwtToken!,
              node.type,
            )).thenThrow(Exception());
        return InitialNodeCubit(_nodeRepository);
      },
      seed: () => InitialNodeState(
        name: Name.dirty(value: node.name),
        url: Url.dirty(value: node.url),
        jwt: Jwt.dirty(value: node.jwtToken!),
        type: Type.dirty(value: NodeTypes.values[node.type]),
        status: FormzStatus.valid,
      ),
      act: (cubit) => cubit..saveNode(),
      expect: () => [
        InitialNodeState(
          name: Name.dirty(value: node.name),
          url: Url.dirty(value: node.url),
          jwt: Jwt.dirty(value: node.jwtToken!),
          status: FormzStatus.submissionInProgress,
          type: Type.dirty(value: NodeTypes.values[node.type]),
        ),
        InitialNodeState(
          name: Name.dirty(value: node.name),
          url: Url.dirty(value: node.url),
          jwt: Jwt.dirty(value: node.jwtToken!),
          status: FormzStatus.submissionFailure,
          type: Type.dirty(value: NodeTypes.values[node.type]),
        ),
      ],
    );
  });
}
