import 'dart:io';

import 'package:hornet_node/features/node_wrapper/cubits/peers_cubit/peers_cubit.dart';
import 'package:dio/dio.dart';

FailureStatusEnum retrieveFailureCode(DioError error) {
  var failureCode = FailureStatusEnum.other;
  switch (error.type) {
    case DioErrorType.response:
      switch (error.response?.statusCode) {
        case HttpStatus.serviceUnavailable:
          failureCode = FailureStatusEnum.nodeNotAvailable;
          break;
        case HttpStatus.unauthorized:
          failureCode = FailureStatusEnum.unauthorized;
          break;
        case HttpStatus.notFound:
          failureCode = FailureStatusEnum.milestoneNotFound;
          break;
        case HttpStatus.badGateway:
          failureCode = FailureStatusEnum.nodeNotAvailable;
          break;
        case HttpStatus.badRequest:
          failureCode = FailureStatusEnum.nodeNotAvailable;
          break;
      }
      break;
    case DioErrorType.other:
      if (error.error is HandshakeException) {
        failureCode = FailureStatusEnum.untrustedCertificate;
      } else if (error.error is SocketException) {
        failureCode = FailureStatusEnum.invalidNodeUrl;
      }
      break;
    default:
  }
  return failureCode;
}
