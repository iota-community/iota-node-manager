import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/features/initial_node/initial_node.dart';
import 'package:hornet_node/features/node_overview/node_overview.dart';
import 'package:hornet_node/features/node_wrapper/node_wrapper_page.dart';

class AppWrapperPage extends StatelessWidget {
  const AppWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NodeCubit, NodeState>(
      builder: (context, state) {
        if (state.status == NodeStatusEnum.nodeSelected) {
          return const NodeWrapperPage();
        } else if (state.status == NodeStatusEnum.noNodeAdded) {
          return const InitialNodePage();
        } else if (state.status == NodeStatusEnum.noNodeSelected) {
          return const NodeOverviewPage();
        } else {
          context.read<NodeCubit>().initState();
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
