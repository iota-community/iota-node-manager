part of '../message_page.dart';

class _MessageCard extends StatelessWidget {
  const _MessageCard(
      {Key? key, this.title, required this.children, this.titleWidget})
      : super(key: key);

  final String? title;
  final Widget? titleWidget;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return HornetCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: titleWidget ??
                  Text(
                    title ?? '',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
          ...children
        ],
      ),
    );
  }
}
