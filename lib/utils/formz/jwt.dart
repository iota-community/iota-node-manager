import 'package:formz/formz.dart';

enum JwtValidationError { empty, wrongFormat }

class Jwt extends FormzInput<String, JwtValidationError> {
  const Jwt.pure() : super.pure('');

  const Jwt.dirty({String value = ''}) : super.dirty(value);

  @override
  JwtValidationError? validator(String value) {
    final _urlRegExp =
        RegExp(r'^([a-zA-Z0-9_=]+)\.([a-zA-Z0-9_=]+)\.([a-zA-Z0-9_\-\+\/=]*)');
    if (value.isEmpty) {
      return null;
    } else if (!_urlRegExp.hasMatch(value)) {
      return JwtValidationError.wrongFormat;
    } else {
      return null;
    }
  }
}
