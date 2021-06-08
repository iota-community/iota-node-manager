import 'package:flutter/material.dart';
import 'package:hornet_node/features/node_wrapper/pages/home/widgets/card_widget.dart';
import 'package:hornet_node/models/hornet/info/info.dart';

class MessagesCard extends StatelessWidget {
  const MessagesCard({Key? key, required this.info}) : super(key: key);

  final Info info;

  @override
  Widget build(BuildContext context) {
    return HomeCardWidget(
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
                    '''Referenced rate: ${info.data.referencedRate.toStringAsFixed(2)}%''',
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
