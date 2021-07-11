import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';

class NodeOverviewPage extends StatelessWidget {
  const NodeOverviewPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: BlocConsumer<NodeCubit, NodeState>(
              listener: (context, state) {
                if (state.status == NodeStatusEnum.noNodeAdded) {
                  AutoRouter.of(context).popUntilRoot();
                }
              },
              builder: (context, state) {
                return ListView.builder(
                  itemCount: state.nodes.length,
                  itemBuilder: (context, index) {
                    var node = state.nodes[index];
                    return Dismissible(
                      key: Key(node.id.toString()),
                      direction: DismissDirection.endToStart,
                      onDismissed: (direction) async {
                        await context.read<NodeCubit>().nodeRemoved(node.id);
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(SnackBar(
                              content: Text('${node.name} dismissed')));
                      },
                      background: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          alignment: Alignment.centerRight,
                          padding: const EdgeInsets.only(right: 20.0),
                          color: Colors.red,
                          child: const Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(node.name,
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1),
                                    Text(node.url,
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1),
                                  ],
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Theme.of(context).accentColor,
                                  ),
                                  onPressed: () => AutoRouter.of(context)
                                    ..push(
                                      EditNodeRoute(id: node.id),
                                    ),
                                  child: Center(
                                    child: Icon(
                                      Icons.edit,
                                      color: Theme.of(context).focusColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
