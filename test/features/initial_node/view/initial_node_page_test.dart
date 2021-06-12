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
  });
}
