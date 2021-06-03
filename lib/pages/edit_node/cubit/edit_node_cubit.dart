import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/models/database/hornet_node.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';
import 'package:hornet_node/utils/formz/name.dart';
import 'package:hornet_node/utils/formz/url.dart';
import 'package:injectable/injectable.dart';

part 'edit_node_state.dart';
part 'edit_node_cubit.freezed.dart';

@injectable
class EditNodeCubit extends Cubit<EditNodeState> {
  EditNodeCubit(this._nodeRepository) : super(EditNodeState.initial());

  final NodeRepository _nodeRepository;

  void setInitialValues(HornetNode node) {
    emit(state.copyWith(
      name: Name.dirty(value: node.name),
      url: Url.dirty(value: node.url),
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

  Future<void> saveNode(String uuid) async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      var node = _nodeRepository.getNode(uuid);
      if (node != null) {
        node
          ..name = state.name.value
          ..url = state.url.value;
        await _nodeRepository.removeNode(uuid);
        await _nodeRepository.addNode(node);
        emit(state.copyWith(status: FormzStatus.submissionSuccess));
      } else {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    } on Exception {
      emit(state.copyWith(status: FormzStatus.submissionFailure));
    }
  }
}
