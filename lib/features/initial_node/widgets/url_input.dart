part of '../view/initial_node_page.dart';

class _UrlInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<InitialNodeCubit, InitialNodeState>(
      buildWhen: (previous, current) => previous.url != current.url,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: TextField(
            key: const Key('addNodeForm_urlInput_textField'),
            keyboardType: TextInputType.url,
            onChanged: (url) =>
                context.read<InitialNodeCubit>().urlChanged(url),
            decoration: InputDecoration(
              labelText: l10n.addInitialNodeUrlLabel,
              helperText: l10n.addInitialNodeUrlHelper,
              errorText: state.url.invalid ? l10n.addInitialNodeUrlError : null,
            ),
          ),
        );
      },
    );
  }
}
