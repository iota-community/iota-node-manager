import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/features/node_wrapper/cubits/health_cubit/health_cubit.dart';

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
                _CircleIndicator(healthy: value.statusCode == 200),
            loadFailure: (_) => const _CircleIndicator(healthy: false),
          ),
        );
      },
    );
  }
}

class _CircleIndicator extends StatelessWidget {
  const _CircleIndicator({Key? key, required this.healthy}) : super(key: key);

  final bool healthy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              healthy ? Colors.green.withAlpha(100) : Colors.red.withAlpha(100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: healthy ? const Color(0xFF50B86C) : Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
