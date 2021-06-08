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
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
        ),
      ),
    );
  }
}
