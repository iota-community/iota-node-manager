part of '../message_page.dart';

class _ChildMessageWidget extends StatelessWidget {
  const _ChildMessageWidget({
    Key? key,
    required this.childrenData,
  }) : super(key: key);

  final MessageChildrenData childrenData;

  @override
  Widget build(BuildContext context) {
    return _MessageCard(
      title: 'Child Messages',
      children: [
        ...childrenData.childrenMessageIds.map(
          (value) {
            var idx = childrenData.childrenMessageIds.indexOf(value) + 1;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CHILD $idx',
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
      ],
    );
  }
}
