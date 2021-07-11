part of '../view/home_page.dart';

class _MilestoneCard extends StatelessWidget {
  const _MilestoneCard({Key? key, required this.info}) : super(key: key);

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
                    color: const Color(0xff16e1d5)),
                child: const Icon(
                  Icons.flag,
                  color: Color(0xFF078C83),
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
                    'CMI / LMI',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      '${info.data.confirmedMilestoneIndex} / ${info.data.latestMilestoneIndex}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    'Latest: ${info.data.latestMilestoneTimestamp?.toLocal()}',
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
