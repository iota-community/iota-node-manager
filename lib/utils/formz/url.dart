import 'package:formz/formz.dart';

enum UrlValidationError { invalid }

class Url extends FormzInput<String, UrlValidationError> {
  const Url.pure() : super.pure('');

  const Url.dirty({String value = ''}) : super.dirty(value);

  static final _urlRegExp = RegExp(
      r'https?:\/\/(www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b([-a-zA-Z0-9()@:%_\+.~#?&//=]*)');

  @override
  UrlValidationError? validator(String value) {
    return _urlRegExp.hasMatch(value) ? null : UrlValidationError.invalid;
  }
}
