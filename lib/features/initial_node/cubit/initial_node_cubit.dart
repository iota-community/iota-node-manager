import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/repository/moor/constants/node_types.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/formz/jwt.dart';
import 'package:hornet_node/utils/formz/name.dart';
import 'package:hornet_node/utils/formz/type.dart';
import 'package:hornet_node/utils/formz/url.dart';
import 'package:injectable/injectable.dart';

part 'initial_node_cubit.freezed.dart';
part 'initial_node_state.dart';

@injectable
class InitialNodeCubit extends Cubit<InitialNodeState> {
  InitialNodeCubit(
    this._nodeRepository,
  ) : super(InitialNodeState.initial());

  final NodeRepository _nodeRepository;

  void nameChanged(String value) {
    final name = Name.dirty(value: value);
    emit(
      state.copyWith(
        name: name,
        status: Formz.validate(<FormzInput>[
          name,
          state.jwt,
          state.url,
          state.type,
        ]),
      ),
    );
  }

  void jwtChanged(String value) {
    final jwt = Jwt.dirty(value: value);
    emit(
      state.copyWith(
        jwt: jwt,
        status: Formz.validate(<FormzInput>[
          jwt,
          state.name,
          state.url,
          state.type,
        ]),
      ),
    );
  }

  void urlChanged(String value) {
    final url = Url.dirty(value: value);
    emit(
      state.copyWith(
        url: url,
        status: Formz.validate(<FormzInput>[
          state.name,
          state.jwt,
          url,
          state.type,
        ]),
      ),
    );
  }

  void typeChanged(NodeTypes value) {
    final type = Type.dirty(value: value);
    emit(
      state.copyWith(
        type: Type.dirty(value: value),
        status: Formz.validate(<FormzInput>[
          type,
          state.name,
          state.url,
          state.jwt,
        ]),
      ),
    );
  }

  Future<void> saveNode() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      final node = await _nodeRepository.addNode(
        state.name.value,
        state.url.value,
        state.jwt.value,
        state.type.value!.index,
      );
      await _nodeRepository.setSelectedNode(node.id);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on Exception {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
