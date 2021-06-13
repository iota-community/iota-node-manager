import 'package:flutter_test/flutter_test.dart';
import 'package:hornet_node/utils/formz/name.dart';

void main() {
  setUpAll(() {});
  tearDown(() {});

  group('Name', () {
    setUp(() {});

    test('validate name successfully', () {
      const name = Name.pure();
      const value = 'Main Node';
      expect(name.validator(value), null);
    });
    test('Name is empty', () {
      const name = Name.pure();
      const value = '';
      expect(name.validator(value), NameValidationError.empty);
    });
  });
}
