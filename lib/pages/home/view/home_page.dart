import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/pages/home/cubit/hornet_cubit.dart';
import 'package:hornet_node/pages/home/cubit/info_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BlocBuilder<HornetCubit, HornetState>(
            builder: (context, state) {
              return Row(
                children: [
                  const Text('Health'),
                  state.maybeMap(
                      healthy: (_) => Container(
                            color: Colors.green,
                            height: 50,
                            width: 50,
                          ),
                      unhealthy: (_) => Container(
                            height: 50,
                            width: 50,
                            color: Colors.red,
                          ),
                      orElse: () => const SizedBox())
                ],
              );
            },
          ),
          BlocBuilder<InfoCubit, InfoState>(
            builder: (context, state) {
              return Row(
                children: [
                  const Text('Health'),
                  state.map(
                    initial: (_) => Container(),
                    loadInProgress: (_) => const CircularProgressIndicator(),
                    loadFailure: (_) => Container(
                      color: Colors.red,
                      height: 50,
                      width: 50,
                    ),
                    loadSuccess: (value) => Text(value.info.data!.name!),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
