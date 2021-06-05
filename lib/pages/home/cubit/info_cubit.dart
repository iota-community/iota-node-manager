import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/info/info.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:injectable/injectable.dart';

part 'info_cubit.freezed.dart';

part 'info_state.dart';

@injectable
class InfoCubit extends Cubit<InfoState> {
  InfoCubit(this._hornetNodeRestClient, this._nodeRepository)
      : super(const InfoState.initial());

  final HornetNodeRestClient _hornetNodeRestClient;
  final NodeRepository _nodeRepository;

  Future<Info?> info() async {
    emit(const InfoState.loadInProgress());
    try {
      var selectedNode = await _nodeRepository.getSelectedNode();
      if (selectedNode != null) {
        var response = await _hornetNodeRestClient.info(selectedNode.url);
        emit(InfoState.loadSuccess(response));
        return response;
      }
    } on Exception catch (_) {
      emit(const InfoState.loadFailure());
    }
  }
}
