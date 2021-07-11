import 'package:formz/formz.dart';

enum PeerAliasValidationError { empty }

class PeerAlias extends FormzInput<String, PeerAliasValidationError> {
  const PeerAlias.pure() : super.pure('');

  const PeerAlias.dirty({String value = ''}) : super.dirty(value);

  @override
  PeerAliasValidationError? validator(String value) {
    return value.isNotEmpty == true ? null : PeerAliasValidationError.empty;
  }
}
