part of '../view/edit_node_page.dart';

class _UrlInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditNodeCubit, EditNodeState>(
      buildWhen: (previous, current) => previous.url != current.url,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: TextFormField(
            key: const Key('editNodeForm_urlInput_textField'),
            keyboardType: TextInputType.url,
            initialValue: state.url.value,
            onChanged: (url) => context.read<EditNodeCubit>().urlChanged(url),
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
