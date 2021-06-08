part of '../message_page.dart';

class _MetadataMessageWidget extends StatelessWidget {
  const _MetadataMessageWidget({
    Key? key,
    required this.metadata,
  }) : super(key: key);

  final MessageMetadataData metadata;

  @override
  Widget build(BuildContext context) {
    return _MessageCard(
      title: 'Metadata',
      children: [
        _ColumTitleTextWidget(
          caption: 'Is solid',
          text: metadata.isSolid.toString(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ledger inclusion',
                style: Theme.of(context).textTheme.caption,
              ),
              getInclusionState(context, metadata.ledgerInclusionState!),
            ],
          ),
        ),
      ],
    );
  }

  Widget getInclusionState(BuildContext context, String state) {
    switch (state) {
      case 'undefined':
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey,
              ),
              child: const Text(
                'NOT INCLUDED',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
                child:
                    Text('The message is not yet referenced by a milestone.'))
          ],
        );
      case 'included':
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.green,
              ),
              child: const Text(
                'INCLUDED',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
              child: Text(
                  '''The message is referenced by a milestone, the transaction is included in the ledger.'''),
            )
          ],
        );
      case 'conflicting':
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.red,
              ),
              child: const Text(
                'CONFLCITING',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
              child: Text(
                  '''The message has a conflict and will not be included in the ledger.'''),
            )
          ],
        );
      case 'noTransaction':
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Theme.of(context).highlightColor,
              ),
              child: const Text(
                'NO TRANSACTION',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Expanded(
              child: Text(
                  '''The message is referenced by a milestone, the data is included in the ledger, but there is no value transfer.'''),
            )
          ],
        );
      default:
        return const SizedBox();
    }
  }
}
