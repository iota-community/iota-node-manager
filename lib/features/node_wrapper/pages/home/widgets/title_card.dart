import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/features/node_wrapper/pages/home/widgets/card_widget.dart';
import 'package:hornet_node/models/hornet/info/info.dart';

class TitleCard extends StatelessWidget {
  const TitleCard({Key? key, required this.info}) : super(key: key);

  final Info info;

  @override
  Widget build(BuildContext context) {
    return HomeCardWidget(
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
                color: ThemeHelper.of(context).blackOrWhite,
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
