import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/features/node_overview/pages/edit_node/edit_node.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../helpers/helpers.dart';

void main() {
  late NodeRepository _nodeRepository;
  late EditNodeCubit _editNodeCubit;
  late NodeCubit _nodeCubit;

  setUpAll(() {
    registerFallbackValue<EditNodeState>(FakeEditNodeCubitState());
    registerFallbackValue<NodeState>(FakeNodeCubitState());
    registerFallbackValue<Node>(node);

    _nodeRepository = MockNodeRepository();
    _editNodeCubit = MockEditNodeCubit();
    _nodeCubit = MockNodeCubit();
  });

  group('EditNodePage', () {
    final snackBarFailureFinder =
        find.byKey(const Key('editNode_saveFailure_snackbar'));

    var submissionFailureState =
        EditNodeState.initial().copyWith(status: FormzStatus.submissionFailure);

    testWidgets('Show failure snackbar if save does not work', (tester) async {
      whenListen<EditNodeState>(
        _editNodeCubit,
        Stream.fromIterable(
          [
            submissionFailureState,
          ],
        ),
        initialState: EditNodeState.initial(),
      );
      getIt
        ..registerSingleton<NodeRepository>(_nodeRepository)
        ..registerSingleton<NodeCubit>(_nodeCubit)
        ..registerSingleton<EditNodeCubit>(_editNodeCubit);

      await tester.pumpApp(const EditNodePage());
      expect(snackBarFailureFinder, findsNothing);
      await tester.pump();
      expect(snackBarFailureFinder, findsOneWidget);

      getIt
        ..unregister<EditNodeCubit>()
        ..unregister<NodeCubit>()
        ..unregister<NodeRepository>();
    });

    group('Edit / Create node flow', () {
      setUp(() {
        when(() => _editNodeCubit.nameChanged(node.name)).thenReturn(null);
        when(() => _editNodeCubit.urlChanged(node.url)).thenReturn(null);
        when(() => _editNodeCubit.jwtChanged(node.jwtToken!)).thenReturn(null);

        var formValidatedState =
            EditNodeState.initial().copyWith(status: FormzStatus.valid);
        whenListen<EditNodeState>(
          _editNodeCubit,
          Stream.fromIterable(
            [formValidatedState],
          ),
          initialState: EditNodeState.initial(),
        );
        when(() => _nodeRepository.getNodeStream(any())).thenAnswer(
          (_) => Stream<Node?>.value(node),
        );
      });
      testWidgets('Tests the whole edit node flow if an node is edited',
          (tester) async {
        when(() => _editNodeCubit.saveNode(node.id))
            .thenAnswer((_) async => {});
        when(() => _nodeCubit.nodeRemoved(any())).thenAnswer((_) async => {});
        when(() => _nodeRepository.updateNode(any()))
            .thenAnswer((_) async => {});

        getIt
          ..registerSingleton<NodeRepository>(_nodeRepository)
          ..registerSingleton<NodeCubit>(_nodeCubit)
          ..registerSingleton<EditNodeCubit>(_editNodeCubit);

        await tester.pumpApp(
          BlocProvider.value(
            value: _nodeCubit,
            child: const EditNodePage(
              id: 1,
            ),
          ),
        );
        await tester.pump(Duration.zero);
        var name = node.name;
        var nameInput =
            find.byKey(const Key('editNodeForm_nameInput_textField'));
        expect(nameInput, findsOneWidget);
        await tester.enterText(nameInput, name);
        expect(find.text(name), findsOneWidget);
        verify(() => _editNodeCubit.nameChanged(any())).called(1);

        var url = node.url;
        var urlInput = find.byKey(const Key('editNodeForm_urlInput_textField'));
        expect(urlInput, findsOneWidget);
        await tester.enterText(urlInput, url);
        expect(find.text(url), findsOneWidget);
        verify(() => _editNodeCubit.urlChanged(any())).called(1);

        var jwt = node.jwtToken!;
        var jwtInput = find.byKey(const Key('editNodeForm_JwtInput_textField'));
        expect(jwtInput, findsOneWidget);
        await tester.enterText(jwtInput, jwt);
        expect(find.text(jwt), findsOneWidget);
        verify(() => _editNodeCubit.jwtChanged(node.jwtToken!)).called(1);

        var saveButton =
            find.byKey(const Key('editNodeForm_save_raisedButton'));
        expect(saveButton, findsOneWidget);
        await tester.tap(saveButton);
        verify(() => _editNodeCubit.saveNode(node.id)).called(1);

        var removeButton =
            find.byKey(const Key('editNodeForm_remove_raisedButton'));
        expect(removeButton, findsOneWidget);
        await tester.tap(removeButton);
        verify(() => _nodeCubit.nodeRemoved(node.id)).called(1);
        await tester.pump(Duration.zero);
      });

      testWidgets('Tests the whole add node flow if a new node is created',
          (tester) async {
        when(() => _editNodeCubit.saveNode(null)).thenAnswer((_) async => {});
        when(() => _nodeRepository.addNode(node.name, node.url, node.jwtToken!))
            .thenAnswer((_) async => node);

        getIt
          ..registerSingleton<NodeRepository>(_nodeRepository)
          ..registerSingleton<NodeCubit>(_nodeCubit)
          ..registerSingleton<EditNodeCubit>(_editNodeCubit);
        await tester.pumpApp(
          BlocProvider.value(
            value: _nodeCubit,
            child: const EditNodePage(
              id: null,
            ),
          ),
        );
        await tester.pump(Duration.zero);
        var name = node.name;
        var nameInput =
            find.byKey(const Key('editNodeForm_nameInput_textField'));
        expect(nameInput, findsOneWidget);
        await tester.enterText(nameInput, name);
        expect(find.text(name), findsOneWidget);
        verify(() => _editNodeCubit.nameChanged(any())).called(1);

        var url = node.url;
        var urlInput = find.byKey(const Key('editNodeForm_urlInput_textField'));
        expect(urlInput, findsOneWidget);
        await tester.enterText(urlInput, url);
        expect(find.text(url), findsOneWidget);
        verify(() => _editNodeCubit.urlChanged(any())).called(1);

        var jwt = node.jwtToken!;
        var jwtInput = find.byKey(const Key('editNodeForm_JwtInput_textField'));
        expect(jwtInput, findsOneWidget);
        await tester.enterText(jwtInput, jwt);
        expect(find.text(jwt), findsOneWidget);
        verify(() => _editNodeCubit.jwtChanged(node.jwtToken!)).called(1);

        var saveButton =
            find.byKey(const Key('editNodeForm_save_raisedButton'));
        expect(saveButton, findsOneWidget);
        await tester.tap(saveButton);
        verify(() => _editNodeCubit.saveNode(null)).called(1);
      });

      tearDown(() {
        getIt
          ..unregister<EditNodeCubit>()
          ..unregister<NodeRepository>()
          ..unregister<NodeCubit>();
      });
    });
  });
}
