import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/endpoints/hornet_node_rest_client.dart';
import 'package:hornet_node/pages/home/cubit/hornet_cubit.dart';
import 'package:retrofit/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _HomePageState();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text('Home'),
          ElevatedButton(
            onPressed: () => context.read<HornetCubit>().health(),
            child: const Text('Helath'),
          )
        ],
      ),
    );
  }
}
