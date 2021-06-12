part of 'app_cubit.dart';

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    required LanguageEntity selectedLanguage,
    required bool darkTheme,
  }) = _AppState;

  factory AppState.initial() {
    var appBox = Hive.box(HiveBoxConstants.appBox);
    var darkmode = appBox.get('darkMode', defaultValue: false);
    var languageIndex = appBox.get('language', defaultValue: 0);
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
  const Languages._();

  static const languages = [
    LanguageEntity(code: 'en', value: 'English'),
    LanguageEntity(code: 'de', value: 'Deutsch'),
  ];
}
