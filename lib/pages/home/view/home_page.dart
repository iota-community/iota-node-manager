import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hornet_node/models/hornet/info/info.dart';
import 'package:hornet_node/pages/home/cubit/health_cubit.dart';
import 'package:hornet_node/pages/home/cubit/info_cubit.dart';

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
                onRefresh: () {
                  BlocProvider.of<HealthCubit>(context).health();
                  BlocProvider.of<InfoCubit>(context).info();
                  return _refreshCompleter.future;
                },
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Container(
                    child: Column(
                      children: [
                        _TitleCard(info: info),
                        _MilestoneCard(info: info),
                        _MessagesCard(info: info),
                        _PruningCard(info: info),
                        _FeaturesCard(info: info)
                      ],
                    ),
                  ),
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

class _TitleCard extends StatelessWidget {
  const _TitleCard({Key? key, required this.info}) : super(key: key);

  final Info info;

  @override
  Widget build(BuildContext context) {
    return _HomeCardWidget(
      height: 100.0,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      info.data.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(info.data.networkId),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(info.data.version),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              padding: const EdgeInsets.all(8),
              color: Theme.of(context).accentColor,
              child: SvgPicture.asset(
                'assets/svg/hornet_banner.svg',
                semanticsLabel: 'Hornet Banner',
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
                fit: BoxFit.fitHeight,
              ),
              // child: ,
            ),
          )
        ],
      ),
    );
  }
}

class _MilestoneCard extends StatelessWidget {
  const _MilestoneCard({Key? key, required this.info}) : super(key: key);

  final Info info;

  @override
  Widget build(BuildContext context) {
    return _HomeCardWidget(
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xff16e1d5)),
                child: const Icon(
                  Icons.flag,
                  color: Color(0xFF078C83),
                  size: 50,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CMI / LMI',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      '${info.data.confirmedMilestoneIndex} / ${info.data.latestMilestoneIndex}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    'Latest: ${info.data.latestMilestoneTimestamp.toLocal()}',
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _MessagesCard extends StatelessWidget {
  const _MessagesCard({Key? key, required this.info}) : super(key: key);

  final Info info;

  @override
  Widget build(BuildContext context) {
    return _HomeCardWidget(
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFF92CAFC)),
                child: const Icon(
                  Icons.mail,
                  color: Color(0xFF1071C6),
                  size: 50,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'MPS / MRPS',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      '${info.data.messagesPerSecond} / ${info.data.referencedMessagesPerSecond}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    'Referenced rate: ${info.data.referencedRate.toStringAsFixed(2)}%',
                    style: const TextStyle(fontSize: 10),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _PruningCard extends StatelessWidget {
  const _PruningCard({Key? key, required this.info}) : super(key: key);

  final Info info;

  @override
  Widget build(BuildContext context) {
    return _HomeCardWidget(
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFFFF9F7A)),
                child: const Icon(
                  Icons.delete_forever,
                  color: Color(0xFFFE672C),
                  size: 50,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PRUNING INDEX',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      '${info.data.pruningIndex}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _FeaturesCard extends StatelessWidget {
  const _FeaturesCard({Key? key, required this.info}) : super(key: key);

  final Info info;

  @override
  Widget build(BuildContext context) {
    return _HomeCardWidget(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Features', style: Theme.of(context).textTheme.headline6),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: const Color(0xFF8286F9)),
                    child: const Icon(
                      Icons.group_work,
                      color: Color(0xFF5055EB),
                      size: 50,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PROOF OF WORK  ',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          children: [
                            Text(
                              '${info.data.minPoWScore}',
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              'Min score',
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeCardWidget extends StatelessWidget {
  const _HomeCardWidget({
    Key? key,
    required this.child,
    this.height,
  }) : super(key: key);

  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          width: width * 0.9,
          height: height,
          child: child,
        ),
      ),
    );
  }
}
