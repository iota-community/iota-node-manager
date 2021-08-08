import 'package:flutter/material.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';

class ReloadButtonWidget extends StatelessWidget {
  const ReloadButtonWidget({Key? key, required this.callback})
      : super(key: key);
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key('addNodeForm_continue_raisedButton'),
      style: ElevatedButton.styleFrom(
        primary: Theme.of(context).accentColor,
      ),
      onPressed: callback,
      child: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text(
            'Reload',
            style: TextStyle(color: ThemeHelper.of(context).blackOrWhite),
          ),
        ),
      ),
    );
  }
}
