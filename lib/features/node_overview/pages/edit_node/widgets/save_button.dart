part of '../view/edit_node_page.dart';

class _SaveButton extends StatelessWidget {
  const _SaveButton({Key? key, required this.id}) : super(key: key);

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
                child: ElevatedButton(
                  key: const Key('editNodeForm_continue_raisedButton'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                  ),
                  onPressed: state.status.isValidated
                      ? () => context.read<EditNodeCubit>().saveNode(id)
                      : null,
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('ADD')),
                  ),
                ),
              );
      },
    );
  }
}
