import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/endpoints/hornet_node_rest_client.dart';
import 'package:hornet_node/endpoints/models/info/info.dart';
import 'package:injectable/injectable.dart';

part 'info_cubit.freezed.dart';

part 'info_state.dart';

@injectable
class InfoCubit extends Cubit<InfoState> {
  InfoCubit(this._hornetNodeRestClient) : super(const InfoState.initial());

  final HornetNodeRestClient _hornetNodeRestClient;

  Future<void> info() async {
    emit(const InfoState.loadInProgress());
    try {
      var response =
          await _hornetNodeRestClient.info('https://iota.devster-hh.de');
      emit(InfoState.loadSuccess(response));
    } on Exception catch (_) {
      emit(const InfoState.loadFailure());
    }
  }
}
