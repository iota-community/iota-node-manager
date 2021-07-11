part of 'edit_node_cubit.dart';

@freezed
class EditNodeState with _$EditNodeState {
  const factory EditNodeState({
    required Name name,
    required Url url,
    required Jwt jwt,
    required FormzStatus status,
    required int? id,
    required bool selected,
  }) = _EditNodeState;

  factory EditNodeState.initial() => const EditNodeState(
        name: Name.pure(),
        url: Url.pure(),
        jwt: Jwt.pure(),
        status: FormzStatus.pure,
        id: null,
        selected: false,
      );
}
