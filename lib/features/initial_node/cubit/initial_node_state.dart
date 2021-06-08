part of 'initial_node_cubit.dart';

@freezed
class InitialNodeState with _$InitialNodeState {
  const factory InitialNodeState({
    required Name name,
    required Url url,
    required FormzStatus status,
  }) = _InitialNodeState;

  factory InitialNodeState.initial() => const InitialNodeState(
        name: Name.pure(),
        url: Url.pure(),
        status: FormzStatus.pure,
      );
}
