import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/models/hornet/milestone/milestone_data.dart';
import 'package:hornet_node/pages/explorer/cubit/milestones_cubit.dart';
import 'package:hornet_node/pages/home/cubit/info_cubit.dart';

class ExplorerPage extends StatelessWidget {
  const ExplorerPage({Key? key}) : super(key: key);

  /*   
  TODO Add a search functionality
  TODO Show latest 10 milestones
  TODO Add subpage for each message including information from 
  /api/v1/messages/:messageId and /api/v1/messages/:messageId/metadata
  and /api/v1/messages/:messageId/children
  TODO Check if message has raw bytes added if so show them by using byte array
  */
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InfoCubit, InfoState>(
      builder: (context, state) {
        return state.maybeMap(loadSuccess: (value) {
          var info = value.info.data;
          return BlocConsumer<MilestonesCubit, MilestonesState>(
            listener: (context, state) {},
            builder: (context, state) {
              return state.maybeMap(
                loadSuccess: (value) {
                  var milestones = value.milestones;
                  return Container(
                    child: ListView.builder(
                      itemCount: milestones.length,
                      itemBuilder: (context, index) {
                        var milestone = milestones[index].data as MilestoneData;
                        return Text(milestone.messageId.toString());
                      },
                    ),
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
