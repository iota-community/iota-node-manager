import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/features/node_wrapper/cubits/health_cubit/health_cubit.dart';
import 'package:hornet_node/features/node_wrapper/cubits/peers_cubit/peers_cubit.dart';
import 'package:hornet_node/repository/moor/constants/node_types.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/formz/jwt.dart';
import 'package:hornet_node/utils/formz/name.dart';
import 'package:hornet_node/utils/formz/type.dart';
import 'package:hornet_node/utils/formz/url.dart';
import 'package:injectable/injectable.dart';

part 'edit_node_cubit.freezed.dart';

part 'edit_node_state.dart';

@injectable
class EditNodeCubit extends Cubit<EditNodeState> {
  EditNodeCubit(this._nodeRepository, this._peersCubit, this._healthCubit)
      : super(EditNodeState.initial());

  final NodeRepository _nodeRepository;
  final PeersCubit _peersCubit;
  final HealthCubit _healthCubit;

  void setInitialValues(Node node) {
    emit(state.copyWith(
      name: Name.dirty(value: node.name),
      url: Url.dirty(value: node.url),
      jwt: Jwt.dirty(value: node.jwtToken ?? ''),
      type: Type.dirty(
        value: NodeTypes.values[node.type],
      ),
      id: node.id,
      status: Formz.validate(<FormzInput>[
        state.name,
        state.jwt,
        state.url,
        state.type,
      ]),
    ));
  }

  void nameChanged(String value) {
    final name = Name.dirty(value: value);
    emit(state.copyWith(
      name: Name.dirty(value: value),
      status: Formz.validate(<FormzInput>[
        name,
        state.jwt,
        state.url,
        state.type,
      ]),
    ));
  }

  void jwtChanged(String value) {
    final jwt = Jwt.dirty(value: value);
    emit(
      state.copyWith(
        jwt: Jwt.dirty(value: value),
        status: Formz.validate(<FormzInput>[
          jwt,
          state.name,
          state.url,
          state.type,
        ]),
      ),
    );
  }

  void typeChanged(NodeTypes value) {
    final type = Type.dirty(value: value);
    emit(state.copyWith(
      type: Type.dirty(value: value),
      status: Formz.validate(<FormzInput>[
        type,
        state.name,
        state.url,
        state.jwt,
      ]),
    ));
  }

  void urlChanged(String value) {
    final url = Url.dirty(value: value);
    emit(state.copyWith(
      url: Url.dirty(value: value),
      status: Formz.validate(<FormzInput>[
        state.name,
        state.jwt,
        url,
        state.url,
      ]),
    ));
  }

  Future<void> saveNode(int? uuid) async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    if (state.id != null) {
      final selectedNode = await _nodeRepository.getSelectedNode();

      await _nodeRepository.updateNode(Node(
        id: state.id!,
        name: state.name.value,
        url: state.url.value,
        jwtToken: state.jwt.value,
        type: state.type.value!.index,
      ));
      if (selectedNode?.id == state.id) {
        await _nodeRepository.setSelectedNode(state.id);
        await _peersCubit.peers();
      }
    } else {
      await _nodeRepository.addNode(
        state.name.value,
        state.url.value,
        state.jwt.value,
        state.type.value!.index,
      );
    }
    await _healthCubit.health();
    emit(state.copyWith(status: FormzStatus.submissionSuccess));
  }
}
