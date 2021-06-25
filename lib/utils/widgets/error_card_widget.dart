import 'dart:async';

import 'package:flutter/material.dart';

class ErrorCardWidget extends StatefulWidget {
  const ErrorCardWidget({Key? key}) : super(key: key);

  @override
  _ErrorCardWidgetState createState() => _ErrorCardWidgetState();
}

class _ErrorCardWidgetState extends State<ErrorCardWidget> {
  late Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () {
        return _refreshCompleter.future;
      },
      child: ListView(
        children: [
          Column(
            children: const [
              Icon(
                Icons.error,
                color: Colors.red,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Text('An error occured. Please refresh to try again.'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
