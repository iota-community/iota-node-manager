part of '../message_page.dart';

class _ColumTitleTextWidget extends StatelessWidget {
  const _ColumTitleTextWidget(
      {Key? key, required this.caption, required this.text})
      : super(key: key);

  final String caption;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            caption,
            style: Theme.of(context).textTheme.caption,
          ),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
