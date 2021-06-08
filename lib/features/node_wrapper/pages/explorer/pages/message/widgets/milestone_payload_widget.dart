part of '../message_page.dart';

class _MilestonePayloadWidget extends StatelessWidget {
  const _MilestonePayloadWidget({
    Key? key,
    required this.messageId,
    required this.payload,
  }) : super(key: key);

  final String messageId;
  final Payload? payload;

  @override
  Widget build(BuildContext context) {
    return _MessageCard(
      title: 'Milestone Payload',
      children: [
        _ColumTitleTextWidget(
          caption: 'Id',
          text: payload!.index.toString(),
        ),
        _ColumTitleTextWidget(
          caption: 'Date',
          text: payload!.timestamp.toString(),
        ),
        ...payload!.parentMessageIds!.map(
          (value) {
            var idx = payload!.parentMessageIds!.indexOf(value) + 1;
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
          caption: 'Inclusion merkle proof',
          text: payload!.inclusionMerkleProof!,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Public keys',
                style: Theme.of(context).textTheme.caption,
              ),
              ...payload!.publicKeys!.map(
                (value) => Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    value,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Signatures',
                style: Theme.of(context).textTheme.caption,
              ),
              ...payload!.signatures!.map(
                (value) => Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text(
                    value,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
