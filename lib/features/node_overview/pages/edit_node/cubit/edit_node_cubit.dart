import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/formz/name.dart';
import 'package:hornet_node/utils/formz/url.dart';
import 'package:injectable/injectable.dart';

part 'edit_node_state.dart';
part 'edit_node_cubit.freezed.dart';

@injectable
class EditNodeCubit extends Cubit<EditNodeState> {
  EditNodeCubit(this._nodeRepository) : super(EditNodeState.initial());

  final NodeRepository _nodeRepository;

  void setInitialValues(Node node) {
    emit(state.copyWith(
      name: Name.dirty(value: node.name),
      url: Url.dirty(value: node.url),
      id: node.id,
      status: Formz.validate(<FormzInput>[state.name, state.url]),
    ));
  }

  void nameChanged(String value) {
    final name = Name.dirty(value: value);
    emit(state.copyWith(
      name: Name.dirty(value: value),
      status: Formz.validate(<FormzInput>[name, state.url]),
    ));
  }

  void urlChanged(String value) {
    final url = Url.dirty(value: value);
    emit(state.copyWith(
      url: Url.dirty(value: value),
      status: Formz.validate(<FormzInput>[state.name, url]),
    ));
  }

  Future<void> saveNode(int? uuid) async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    if (state.id != null) {
      await _nodeRepository.updateNode(Node(
        id: state.id!,
        name: state.name.value,
        url: state.url.value,
      ));
    } else {
      await _nodeRepository.addNode(state.name.value, state.url.value,
          selected: true);
    }
    emit(state.copyWith(status: FormzStatus.submissionSuccess));
  }
}
