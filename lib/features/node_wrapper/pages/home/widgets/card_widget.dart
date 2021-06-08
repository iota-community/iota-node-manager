part of '../view/home_page.dart';

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
        child: SizedBox(
          width: width * 0.9,
          height: height,
          child: child,
        ),
      ),
    );
  }
}
