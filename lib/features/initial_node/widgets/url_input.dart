part of '../view/initial_node_page.dart';

class _UrlInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              labelText: 'Url',
              helperText: 'Example: https://iota.node.de',
              errorText: state.url.invalid ? 'invalid url' : null,
            ),
          ),
        );
      },
    );
  }
}
