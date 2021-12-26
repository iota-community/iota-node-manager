part of 'initial_node_cubit.dart';

@freezed
class InitialNodeState with _$InitialNodeState {
  const factory InitialNodeState({
    required Name name,
    required Url url,
    required Jwt jwt,
    required FormzStatus status,
    required Type type,
  }) = _InitialNodeState;

  factory InitialNodeState.initial() => const InitialNodeState(
        name: Name.pure(),
        url: Url.pure(),
        jwt: Jwt.pure(),
        status: FormzStatus.pure,
        type: Type.pure(),
      );
}
