part of '../view/initial_node_page.dart';

class _SaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<InitialNodeCubit, InitialNodeState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton(
                  key: const Key('addNodeForm_continue_raisedButton'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                  ),
                  onPressed: state.status.isValidated
                      ? () => context.read<InitialNodeCubit>().saveNode()
                      : null,
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        l10n.addInitialNodeSaveButton,
                        style: TextStyle(
                            color: ThemeHelper.of(context).blackOrWhite),
                      ),
                    ),
                  ),
                ),
              );
      },
    );
  }
}
