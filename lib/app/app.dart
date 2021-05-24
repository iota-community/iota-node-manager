import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/l10n/l10n.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(HiveBoxConstants.darkModeBox).listenable(),
      builder: (BuildContext context, Box box, Widget? child) {
        var darkMode = box.get('darkMode', defaultValue: false);
        return MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
          darkTheme: CustomTheme.darkTheme,
          theme: CustomTheme.lightTheme,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },
    );
  }
}
