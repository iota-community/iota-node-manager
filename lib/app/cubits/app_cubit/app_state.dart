part of 'app_cubit.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required LanguageEntity selectedLanguage,
    required bool darkTheme,
  }) = _AppState;

  factory AppState.initial() {
    final appBox = getIt<Box>(instanceName: HiveBoxConstants.appBox);
    final darkmode =
        appBox.get(HiveBoxConstants.darkModeKey) ?? false;
    final languageIndex =
        appBox.get(HiveBoxConstants.languageKey) ?? 0;
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
