import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/models/hornet/milestone/milestone_data.dart';
import 'package:hornet_node/pages/explorer/cubit/milestones_cubit.dart';
import 'package:hornet_node/pages/home/cubit/info_cubit.dart';

class ExplorerPage extends StatefulWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  @override
  _ExplorerPageState createState() => _ExplorerPageState();
}

class _ExplorerPageState extends State<ExplorerPage> {
  late Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InfoCubit, InfoState>(
      builder: (context, state) {
        return state.maybeMap(loadSuccess: (value) {
          var info = value.info.data;
          return BlocConsumer<MilestonesCubit, MilestonesState>(
            listener: (context, state) {
              state.maybeMap(
                loadSuccess: (_) {
                  _refreshCompleter.complete();
                  _refreshCompleter = Completer();
                },
                orElse: () => {},
              );
            },
            builder: (context, state) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 350),
                child: state.maybeMap(
                  loadSuccess: (value) {
                    var milestones = value.milestones;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.0, vertical: 10),
                          child: Text(
                            'LATEST MILESTONES',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Expanded(
                          child: RefreshIndicator(
                            color: ThemeHelper.of(context).blackOrWhite,
                            onRefresh: () {
                              BlocProvider.of<MilestonesCubit>(context)
                                  .milestones(info.latestMilestoneIndex);
                              return _refreshCompleter.future;
                            },
                            child: ListView.builder(
                              itemCount: milestones.length,
                              itemBuilder: (context, index) {
                                var milestone = milestones[index].data;
                                return _MilestoneCard(
                                  milestone: milestone,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  initial: (_) {
                    BlocProvider.of<MilestonesCubit>(context)
                        .milestones(info.latestMilestoneIndex);
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            },
          );
        }, orElse: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
      },
    );
  }
}

class _MilestoneCard extends StatelessWidget {
  const _MilestoneCard({Key? key, required this.milestone}) : super(key: key);

  final MilestoneData milestone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: GestureDetector(
        onTap: () => AutoRouter.of(context)
          ..push(
            MileStoneDetailRoute(messageId: milestone.messageId),
          ),
        child: Card(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Flexible(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Index: ${milestone.index.toString()}',
                          style: TextStyle(
                              fontSize: 17,
                              color: Theme.of(context).highlightColor),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Container(
                          padding: const EdgeInsets.all(3),
                          color: Theme.of(context).focusColor,
                          child: RichText(
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              style: const TextStyle(color: Colors.white),
                              text: milestone.messageId.toString(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).accentColor,
                    ),
                    onPressed: () => AutoRouter.of(context)
                      ..push(
                        MileStoneDetailRoute(messageId: milestone.messageId),
                      ),
                    child: SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).highlightColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
