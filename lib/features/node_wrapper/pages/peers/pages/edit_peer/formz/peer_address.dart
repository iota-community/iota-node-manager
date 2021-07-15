import 'package:formz/formz.dart';

enum PeerAddressValidationError { empty }

class PeerAddress extends FormzInput<String, PeerAddressValidationError> {
  const PeerAddress.pure() : super.pure('');

  const PeerAddress.dirty({String value = ''}) : super.dirty(value);

  @override
  PeerAddressValidationError? validator(String value) {
    return value.isNotEmpty == true ? null : PeerAddressValidationError.empty;
  }
}
