part of '../view/edit_node_page.dart';

class _Buttons extends StatelessWidget {
  const _Buttons({Key? key, required this.id}) : super(key: key);

  final int? id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditNodeCubit, EditNodeState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      key: const Key('editNodeForm_save_raisedButton'),
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                      ),
                      onPressed: state.status.isValidated
                          ? () => context.read<EditNodeCubit>().saveNode(id)
                          : null,
                      child: SizedBox(
                        width: 50,
                        child: Center(
                            child: Text(
                          id != null ? 'SAVE' : 'ADD',
                          style: TextStyle(
                              color: ThemeHelper.of(context).blackOrWhite),
                        )),
                      ),
                    ),
                    id != null
                        ? const SizedBox(
                            width: 15,
                          )
                        : const SizedBox(),
                    id != null
                        ? ElevatedButton(
                            key: const Key('editNodeForm_remove_raisedButton'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.red,
                            ),
                            onPressed: () =>
                                context.read<NodeCubit>().nodeRemoved(id!),
                            child: const SizedBox(
                              child: Center(
                                  child: Icon(
                                Icons.delete_forever,
                                color: Colors.white,
                              )),
                            ),
                          )
                        : const SizedBox()
                  ],
                ),
              );
      },
    );
  }
}
