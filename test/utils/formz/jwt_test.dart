import 'package:flutter_test/flutter_test.dart';
import 'package:hornet_node/utils/formz/jwt.dart';

void main() {
  setUpAll(() {});
  tearDown(() {});

  group('Jwt', () {
    setUp(() {});

    test('validate JWT token successfully', () {
      const jwt = Jwt.pure();
      const value =
          // ignore: lines_longer_than_80_chars
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpYXQiOjE1MTYyMzkwMjJ9.tbDepxpstvGdW8TC3G8zg4B6rUYAOvfzdceoH48wgRQ';
      expect(jwt.validator(value), null);
    });
    test('JWT token has the wrong format', () {
      const jwt = Jwt.pure();
      const value = 'stvGdW8TC3G8zg4B6rUYAOvfzdceoH48wgRQ';
      expect(jwt.validator(value), JwtValidationError.wrongFormat);
    });

    test('JWT token is empty', () {
      const jwt = Jwt.pure();
      const value = '';
      expect(jwt.validator(value), JwtValidationError.empty);
    });
  });
}
