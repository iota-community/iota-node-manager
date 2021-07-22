import 'package:flutter/material.dart';

class ErrorCardWidget extends StatefulWidget {
  const ErrorCardWidget({Key? key, this.child}) : super(key: key);
  final Widget? child;
  @override
  _ErrorCardWidgetState createState() => _ErrorCardWidgetState();
}

class _ErrorCardWidgetState extends State<ErrorCardWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const Icon(
              Icons.error,
              color: Colors.red,
              size: 120,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: const [
                  Text('An error occured...'),
                  Text('Please check your internet connection and try again.'),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 10),
              child: widget.child ?? const SizedBox(),
            ),
          ],
        ),
      ],
    );
  }
}
