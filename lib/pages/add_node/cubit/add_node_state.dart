part of 'add_node_cubit.dart';

@freezed
class AddNoteState with _$AddNoteState {
  const factory AddNoteState({
    required Name name,
    required Url url,
    required FormzStatus status,
  }) = _AddNoteState;

  factory AddNoteState.initial() => const AddNoteState(
        name: Name.pure(),
        url: Url.pure(),
        status: FormzStatus.pure,
      );
}
