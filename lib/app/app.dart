import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hornet_node/app/cubits/app_cubit/app_cubit.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/l10n/l10n.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

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
      valueListenable: Hive.box(HiveBoxConstants.appBox).listenable(),
      builder: (BuildContext context, Box box, Widget? child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<NodeCubit>()..initState(),
            ),
            BlocProvider(
              create: (context) => getIt<AppCubit>(),
            ),
          ],
          child: BlocBuilder<AppCubit, AppState>(
            builder: (context, state) {
              return MaterialApp.router(
                builder: (context, widget) => ResponsiveWrapper.builder(
                    BouncingScrollWrapper.builder(context, widget!),
                    maxWidth: 1200,
                    minWidth: 450,
                    defaultScale: true,
                    breakpoints: [
                      const ResponsiveBreakpoint.resize(450, name: MOBILE),
                      const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                      const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                      const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                      const ResponsiveBreakpoint.autoScale(2460, name: '4K'),
                    ],
                    background: Container(color: const Color(0xFFF5F5F5))),
                routerDelegate: _appRouter.delegate(),
                routeInformationParser: _appRouter.defaultRouteParser(),
                themeMode: state.darkTheme ? ThemeMode.dark : ThemeMode.light,
                darkTheme: CustomTheme.darkTheme,
                theme: CustomTheme.lightTheme,
                locale: Locale(state.selectedLanguage.code),
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: AppLocalizations.supportedLocales,
              );
            },
          ),
        );
      },
    );
  }
}
