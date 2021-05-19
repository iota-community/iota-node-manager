import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/pages/home/cubit/health_cubit.dart';
import 'package:hornet_node/pages/home/cubit/info_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BlocBuilder<HealthCubit, HealthState>(
            builder: (context, state) {
              return Row(
                children: [
                  const Text('Health'),
                  state.map(
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
                    initial: (_) {
                      BlocProvider.of<HealthCubit>(context).health();
                      return const SizedBox();
                    },
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    onPressed: () {
                      BlocProvider.of<HealthCubit>(context).health();
                    },
                    child: const Text('Reload'),
                  )
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
                    initial: (_) {
                      BlocProvider.of<InfoCubit>(context).info();
                      return Container();
                    },
                    loadInProgress: (_) => const CircularProgressIndicator(),
                    loadFailure: (_) => Container(
                      color: Colors.red,
                      height: 50,
                      width: 50,
                    ),
                    loadSuccess: (value) => Text(value.info.data!.name!),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.blue,
                    ),
                    onPressed: () {
                      BlocProvider.of<InfoCubit>(context).info();
                    },
                    child: const Text('Reload'),
                  )
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
