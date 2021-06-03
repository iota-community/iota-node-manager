import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubit/node_cubit.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';

class NodesPage extends StatelessWidget {
  const NodesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<NodeCubit, NodeState>(
              builder: (context, state) {
                return ListView.builder(
                  itemCount: state.nodes.length,
                  itemBuilder: (context, index) {
                    var node = state.nodes[index];
                    return Padding(
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
                                    EditNodeRoute(uuid: node.uuid),
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
