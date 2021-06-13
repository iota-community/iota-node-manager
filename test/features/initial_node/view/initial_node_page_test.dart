import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/features/initial_node/initial_node.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  setUpAll(() {
    registerFallbackValue<InitialNodeState>(FakeInitialNodeCubitState());
    registerFallbackValue<NodeState>(FakeNodeCubitState());
  });

  tearDown(() {});
  group('AppWrapperPage', () {
    late NodeCubit nodeCubit;
    late InitialNodeCubit initialNodeCubit;
    final snackBarFailureFinder = find.byKey(const Key('saveFailureSnackbar'));
    var submissionFailureState = InitialNodeState.initial()
        .copyWith(status: FormzStatus.submissionFailure);

    setUp(() {
      nodeCubit = MockNodeCubit();
      initialNodeCubit = MockInitialNodeCubit();
    });
    testWidgets('Show failure snackbar if save does not work', (tester) async {
      whenListen<InitialNodeState>(
        initialNodeCubit,
        Stream.fromIterable(
          [
            submissionFailureState,
          ],
        ),
        initialState: InitialNodeState.initial(),
      );
      getIt.registerSingleton<InitialNodeCubit>(initialNodeCubit);
      await tester.pumpApp(
        BlocProvider.value(
          value: nodeCubit,
          child: const InitialNodePage(),
        ),
      );
      expect(snackBarFailureFinder, findsNothing);
      await tester.pump();
      expect(snackBarFailureFinder, findsOneWidget);
      getIt.unregister<InitialNodeCubit>();
    });
    testWidgets('Update app status if saving was successful', (tester) async {
      var submissionSuccessState = InitialNodeState.initial()
          .copyWith(status: FormzStatus.submissionSuccess);
      whenListen<InitialNodeState>(
        initialNodeCubit,
        Stream.fromIterable(
          [
            submissionSuccessState,
          ],
        ),
        initialState: InitialNodeState.initial(),
      );
      getIt
        ..registerSingleton<InitialNodeCubit>(initialNodeCubit)
        ..registerSingleton<NodeCubit>(nodeCubit);

      when(() => nodeCubit.updateStatus(NodeStatusEnum.nodeSelected))
          .thenReturn(null);

      await tester.pumpApp(
        BlocProvider.value(
          value: nodeCubit,
          child: const InitialNodePage(),
        ),
      );
      await tester.pump();
      verify(() => nodeCubit.updateStatus(NodeStatusEnum.nodeSelected))
          .called(1);
      getIt..unregister<InitialNodeCubit>()..unregister<NodeCubit>();
    });

    testWidgets(
        'Calls cubit method nameChanged when values are entered to nameInput',
        (tester) async {
      when(() => initialNodeCubit.nameChanged(node.name)).thenReturn(null);
      when(() => initialNodeCubit.urlChanged(node.url)).thenReturn(null);
      when(() => initialNodeCubit.jwtChanged(node.jwtToken!)).thenReturn(null);
      when(() => initialNodeCubit.saveNode()).thenAnswer((_) async => {});
      var formValidatedState =
          InitialNodeState.initial().copyWith(status: FormzStatus.valid);
      whenListen<InitialNodeState>(
        initialNodeCubit,
        Stream.fromIterable(
          [formValidatedState],
        ),
        initialState: InitialNodeState.initial(),
      );
      getIt.registerSingleton<InitialNodeCubit>(initialNodeCubit);
      await tester.pumpApp(
        BlocProvider.value(
          value: initialNodeCubit,
          child: const InitialNodePage(),
        ),
      );
      var name = node.name;
      var nameInput = find.byKey(const Key('addNodeForm_nameInput_textField'));
      expect(nameInput, findsOneWidget);
      await tester.enterText(nameInput, name);
      expect(find.text(name), findsOneWidget);
      verify(() => initialNodeCubit.nameChanged(any())).called(1);

      var url = node.url;
      var urlInput = find.byKey(const Key('addNodeForm_urlInput_textField'));
      expect(urlInput, findsOneWidget);
      await tester.enterText(urlInput, url);
      expect(find.text(url), findsOneWidget);
      verify(() => initialNodeCubit.urlChanged(any())).called(1);

      var jwt = node.jwtToken!;
      var jwtInput = find.byKey(const Key('addNodeForm_JwtInput_textField'));
      expect(jwtInput, findsOneWidget);
      await tester.enterText(jwtInput, jwt);
      expect(find.text(jwt), findsOneWidget);
      verify(() => initialNodeCubit.jwtChanged(node.jwtToken!)).called(1);

      var saveButton =
          find.byKey(const Key('addNodeForm_continue_raisedButton'));
      expect(saveButton, findsOneWidget);
      await tester.tap(saveButton);
      verify(() => initialNodeCubit.saveNode()).called(1);
      getIt.unregister<InitialNodeCubit>();
    });
  });
}
