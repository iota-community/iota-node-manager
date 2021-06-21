part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required LanguageEntity selectedLanguage,
    required bool darkTheme,
  }) = _AppState;

  factory AppState.initial() {
    var appBox = getIt<Box>(instanceName: HiveBoxConstants.appBox);
    var darkmode =
        appBox.get(HiveBoxConstants.darkModeKey, defaultValue: false);
    var languageIndex =
        appBox.get(HiveBoxConstants.languageKey, defaultValue: 0);
    return AppState(
      selectedLanguage: Languages.languages[languageIndex],
      darkTheme: darkmode ? true : false,
    );
  }
}

class LanguageEntity {
  const LanguageEntity({
    required this.code,
    required this.value,
  });

  final String code;
  final String value;
}

class Languages {
  static const languages = [
    LanguageEntity(code: 'en', value: 'English'),
    LanguageEntity(code: 'de', value: 'Deutsch'),
  ];
}
