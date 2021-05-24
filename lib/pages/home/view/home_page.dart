import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/models/database/hornet_node.dart';
import 'package:hornet_node/models/hornet/info/info.dart';
import 'package:hornet_node/pages/home/cubit/health_cubit.dart';
import 'package:hornet_node/pages/home/cubit/info_cubit.dart';
import 'package:hornet_node/repository/node_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const _TitleCard(),
        ],
      ),
    );
  }
}

class _TitleCard extends StatelessWidget {
  const _TitleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return BlocBuilder<InfoCubit, InfoState>(
      builder: (context, state) {
        return state.maybeMap(
          loadSuccess: (value) {
            var info = value.info;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  width: width * 0.9,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  info.data?.name ?? '',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(info.data?.networkId ?? ''),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(info.data?.version ?? ''),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 90,
                          padding: const EdgeInsets.all(8),
                          color: Theme.of(context).accentColor,
                          child: SvgPicture.asset(
                            'assets/svg/hornet_banner.svg',
                            semanticsLabel: 'Acme Logo',
                            fit: BoxFit.fitHeight,
                          ),
                          // child: ,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          orElse: () => const CircularProgressIndicator(),
        );
      },
    );
  }
}
