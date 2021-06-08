part of '../message_page.dart';

class _MessageWidget extends StatelessWidget {
  const _MessageWidget({
    Key? key,
    required this.messageId,
    required this.messageData,
  }) : super(key: key);

  final String messageId;
  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return _MessageCard(
      titleWidget: Row(
        children: [
          const Text(
            'Message',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          messageData.payload!.type == 1
              ? Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.green,
                      ),
                      child: const Text(
                        'MILESTONE',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Id',
                style: Theme.of(context).textTheme.caption,
              ),
              Text(
                messageId,
              ),
            ],
          ),
        ),
        ...messageData.parentMessageIds.map(
          (value) {
            var idx = messageData.parentMessageIds.indexOf(value) + 1;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PARENT MESSAGE $idx',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  RichText(
                    text: TextSpan(
                        text: value,
                        style: TextStyle(
                          color: Theme.of(context).highlightColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            AutoRouter.of(context)
                                .push(MessageRoute(messageId: value));
                          }),
                  ),
                ],
              ),
            );
          },
        ),
        _ColumTitleTextWidget(
          caption: 'NONCE',
          text: messageData.nonce!,
        ),
      ],
    );
  }
}
