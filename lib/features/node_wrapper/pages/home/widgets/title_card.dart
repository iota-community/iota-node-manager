part of '../view/home_page.dart';

class _TitleCard extends StatelessWidget {
  const _TitleCard({Key? key, required this.info}) : super(key: key);

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
