import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/formz/jwt.dart';
import 'package:hornet_node/utils/formz/name.dart';
import 'package:hornet_node/utils/formz/url.dart';
import 'package:injectable/injectable.dart';

part 'initial_node_state.dart';
part 'initial_node_cubit.freezed.dart';

@injectable
class InitialNodeCubit extends Cubit<InitialNodeState> {
  InitialNodeCubit(
    this._nodeRepository,
  ) : super(InitialNodeState.initial());

  final NodeRepository _nodeRepository;

  void nameChanged(String value) {
    final name = Name.dirty(value: value);
    emit(state.copyWith(
      name: Name.dirty(value: value),
      status: Formz.validate(<FormzInput>[name, state.jwt, state.url]),
    ));
  }

  void jwtChanged(String value) {
    final jwt = Jwt.dirty(value: value);
    emit(state.copyWith(
      jwt: Jwt.dirty(value: value),
      status: Formz.validate(<FormzInput>[jwt, state.name, state.url]),
    ));
  }

  void urlChanged(String value) {
    final url = Url.dirty(value: value);
    emit(state.copyWith(
      url: Url.dirty(value: value),
      status: Formz.validate(<FormzInput>[state.name, state.jwt, url]),
    ));
  }

  Future<void> saveNode() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      var node = await _nodeRepository.addNode(
        state.name.value,
        state.url.value,
        state.jwt.value,
      );
      await _nodeRepository.setSelectedNode(node.id);
      emit(state.copyWith(status: FormzStatus.submissionSuccess));
    } on Exception {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
