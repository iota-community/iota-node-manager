import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/endpoints/hornet_node_rest_client.dart';
import 'package:injectable/injectable.dart';

part 'health_cubit.freezed.dart';

part 'health_state.dart';

@injectable
class HealthCubit extends Cubit<HealthState> {
  HealthCubit(this._hornetNodeRestClient) : super(const HealthState.initial());

  final HornetNodeRestClient _hornetNodeRestClient;

  Future<void> health() async {
    var response =
        await _hornetNodeRestClient.health('https://iota.devster-hh.de');
    final statusCode = response.response.statusCode;
    if (statusCode == 200) {
      emit(const HealthState.healthy());
    } else {
      emit(const HealthState.unhealthy());
    }
  }
}
