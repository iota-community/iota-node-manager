import 'package:flutter/material.dart';
import 'package:hornet_node/features/node_wrapper/cubits/peers_cubit/peers_cubit.dart';

class ErrorCardWidget extends StatelessWidget {
  const ErrorCardWidget({Key? key, this.child, required this.errorCode})
      : super(key: key);

  final Widget? child;
  final FailureStatusEnum errorCode;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const Icon(
              Icons.error,
              color: Colors.red,
              size: 120,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    'An error occured...',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                    child: DioErrorWidget(errorCode: errorCode),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: child ?? const SizedBox(),
            ),
          ],
        ),
      ],
    );
  }
}

class DioErrorWidget extends StatelessWidget {
  const DioErrorWidget({Key? key, required this.errorCode}) : super(key: key);
  final FailureStatusEnum errorCode;

  @override
  Widget build(BuildContext context) {
    switch (errorCode) {
      case FailureStatusEnum.invalidNodeUrl:
        return const Text(
            "Could't retrieve data from the defined node url. Please verify that it is correct.");
      case FailureStatusEnum.milestoneNotFound:
        return const Text(
            'The requested milestone is not available anymore. Please select a different one and try again.');
      case FailureStatusEnum.nodeNotAvailable:
        return const Text(
            'The selected node seems not to be available. Please verify the configuration of the node and try again');
      case FailureStatusEnum.unauthorized:
        return const Text(
            "Could't load data from the node. It seems you're not authorized. Please make sure you entered the correct JWT-Token and it is correctly setup.");
      case FailureStatusEnum.untrustedCertificate:
        return const Text(
            'It seems like your node is running with an untrusted HTTPS-Certificate. Please make sure to either not use HTTPS or fix the certificate.');
      default:
        return const Text(
            'An unknown error occured. Please make sure to verify your node configuration and check your internet connection.');
    }
  }
}
