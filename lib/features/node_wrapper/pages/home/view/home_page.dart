import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/features/node_wrapper/cubits/health_cubit/health_cubit.dart';
import 'package:hornet_node/features/node_wrapper/cubits/info_cubit/info_cubit.dart';
import 'package:hornet_node/models/hornet/info/info.dart';
import 'package:hornet_node/utils/widgets/error_card_widget.dart';
import 'package:hornet_node/utils/widgets/home_card_widget.dart';

part '../widgets/features_card.dart';
part '../widgets/messages_card.dart';
part '../widgets/milestones_card.dart';
part '../widgets/pruning_card.dart';
part '../widgets/title_card.dart';

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
          orElse: () => <void>{},
        );
      },
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          child: state.map(
            loadSuccess: (value) {
              final info = value.info;
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
                        _TitleCard(info: info),
                        _MilestoneCard(info: info),
                        _MessagesCard(info: info),
                        _PruningCard(info: info),
                        _FeaturesCard(info: info),
                      ],
                    ),
                  ],
                ),
              );
            },
            loadInProgress: (_) =>
                const Center(child: CircularProgressIndicator()),
            loadFailure: (error) {
              return ErrorCardWidget(
                errorCode: error.failure,
                child: ElevatedButton(
                  key: const Key('addNodeForm_continue_raisedButton'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                  ),
                  onPressed: () {
                    BlocProvider.of<HealthCubit>(context).health();
                    BlocProvider.of<InfoCubit>(context).info();
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'Reload',
                        style: TextStyle(
                            color: ThemeHelper.of(context).blackOrWhite),
                      ),
                    ),
                  ),
                ),
              );
            },
            initial: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
      },
    );
  }
}
