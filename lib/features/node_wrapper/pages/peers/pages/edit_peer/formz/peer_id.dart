import 'package:formz/formz.dart';

enum PeerIdValidationError { empty }

class PeerId extends FormzInput<String, PeerIdValidationError> {
  const PeerId.pure() : super.pure('');

  const PeerId.dirty({String value = ''}) : super.dirty(value);

  @override
  PeerIdValidationError? validator(String value) {
    return value.isNotEmpty == true ? null : PeerIdValidationError.empty;
  }
}
