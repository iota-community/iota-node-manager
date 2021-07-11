import 'package:flutter_test/flutter_test.dart';
import 'package:hornet_node/utils/formz/url.dart';

void main() {
  setUpAll(() {});
  tearDown(() {});

  group('Url', () {
    setUp(() {});

    test('validate Url successfully', () {
      const url = Url.pure();
      const value = 'https://iota.dev.com';
      expect(url.validator(value), null);
    });
    test('Url is empty', () {
      const url = Url.pure();
      const value = '';
      expect(url.validator(value), UrlValidationError.invalid);
    });
    test('Url is wrong', () {
      const url = Url.pure();
      const value = 'hlls://dev.com';
      expect(url.validator(value), UrlValidationError.invalid);
    });
  });
}
