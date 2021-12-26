import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hornet_node/app/cubits/app_cubit/app_cubit.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late Box _appBox;

  void mockAppBox() {
    when(() => _appBox.put(HiveBoxConstants.darkModeKey, any<bool>()))
        .thenAnswer((_) async => <void>{});
    when<bool>(
      () => _appBox.get(
        HiveBoxConstants.darkModeKey,
        defaultValue: false,
      ),
    ).thenReturn(false);
    when<int>(() => _appBox.get(HiveBoxConstants.languageKey, defaultValue: 0))
        .thenReturn(0);
    getIt.registerSingleton<Box<dynamic>>(
      _appBox,
      instanceName: HiveBoxConstants.appBox,
    );
  }

  setUpAll(() {
    _appBox = MockBox();
    mockAppBox();
  });

  tearDown(() {
    getIt.unregister<Box<dynamic>>(instanceName: HiveBoxConstants.appBox);
  });

  group('themeChanged', () {
    blocTest<AppCubit, AppState>(
      'emits the state with dark theme selected',
      build: () {
        return AppCubit(_appBox);
      },
      act: (cubit) => cubit..themeChanged(),
      expect: () =>
          [AppState(selectedLanguage: Languages.languages[0], darkTheme: true)],
      verify: (_) {
        verify(() => _appBox.put(HiveBoxConstants.darkModeKey, true)).called(1);
      },
    );
  });
}
