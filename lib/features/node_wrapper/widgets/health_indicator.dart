import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/features/node_wrapper/cubits/health_cubit/health_cubit.dart';
import 'package:hornet_node/features/node_wrapper/widgets/circle_indicator.dart';

class HealthIndicator extends StatelessWidget {
  const HealthIndicator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HealthCubit, HealthState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          child: state.map(
            initial: (_) {
              BlocProvider.of<HealthCubit>(context).health();
              return const SizedBox();
            },
            loadInProgress: (_) => const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: CircularProgressIndicator(),
              ),
            ),
            loadSuccess: (value) =>
                CircleIndicator(healthy: value.statusCode == 200),
            loadFailure: (_) => const CircleIndicator(healthy: false),
          ),
        );
      },
    );
  }
}
