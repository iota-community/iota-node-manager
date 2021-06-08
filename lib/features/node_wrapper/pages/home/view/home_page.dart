import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/features/node_wrapper/cubits/health_cubit/health_cubit.dart';
import 'package:hornet_node/features/node_wrapper/cubits/info_cubit/info_cubit.dart';
import 'package:hornet_node/features/node_wrapper/pages/home/widgets/features_card.dart';
import 'package:hornet_node/features/node_wrapper/pages/home/widgets/messages_card.dart';
import 'package:hornet_node/features/node_wrapper/pages/home/widgets/milestones_card.dart';
import 'package:hornet_node/features/node_wrapper/pages/home/widgets/pruning_card.dart';
import 'package:hornet_node/features/node_wrapper/pages/home/widgets/title_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InfoCubit, InfoState>(
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
              var info = value.info;
              return RefreshIndicator(
                color: ThemeHelper.of(context).blackOrWhite,
                onRefresh: () {
                  BlocProvider.of<HealthCubit>(context).health();
                  BlocProvider.of<InfoCubit>(context).info();
                  return _refreshCompleter.future;
                },
                child: ListView(
                  children: [
                    Column(
                      children: [
                        TitleCard(info: info),
                        MilestoneCard(info: info),
                        MessagesCard(info: info),
                        PruningCard(info: info),
                        FeaturesCard(info: info)
                      ],
                    ),
                  ],
                ),
              );
            },
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            orElse: () => const Center(child: CircularProgressIndicator()),
          ),
        );
      },
    );
  }
}
