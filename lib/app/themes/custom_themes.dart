import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF222a3d),
      canvasColor: const Color(0xFF222a3d),
      focusColor: const Color(0xFF5E6E8F),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF222a3d),
        selectedIconTheme: IconThemeData(),
        selectedItemColor: Color(0xFF108cff),
        unselectedItemColor: Color(0xFFA6ABB5),
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: Color(0xFF108cff),
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
          backgroundColor: Color(0xFF222a3d),
        ),
      ),
      backgroundColor: const Color(0xFF222a3d),
      highlightColor: const Color(0xFF108cff),
      primaryColor: const Color(0xFF2b3658),
      accentColor: const Color(0xFF353f60),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFF2b3658),
      ),
      cardColor: const Color(0xFF2b3658),
      fontFamily: 'Roboto',
      primaryTextTheme: Typography.material2018().white,
      textTheme: Typography.material2018().white,
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: const Color(0xfff6f9fe),
      canvasColor: const Color(0xfff6f9fe),
      focusColor: const Color(0xFF535D7E),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffffffff),
        selectedItemColor: Color(0xFF108cff),
        unselectedItemColor: Color(0xFF9aadce),
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
          color: Color(0xFF108cff),
        ),
        unselectedLabelStyle: TextStyle(
          color: Colors.black,
          backgroundColor: Color(0xfff6f9fe),
        ),
      ),
      backgroundColor: const Color(0xfff6f9fe),
      highlightColor: const Color(0xFF108cff),
      primaryColor: const Color(0xffffffff),
      accentColor: const Color(0xFFf6f8fc),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffffffff),
      ),
      cardColor: const Color(0xffffffff),
      fontFamily: 'Roboto',
      primaryTextTheme: Typography.material2018().black,
      textTheme: Typography.material2018().black,
    );
  }
}

class ThemeHelper {
  static ThemeHelperMethods of(BuildContext context) {
    return ThemeHelperMethods(Theme.of(context).brightness);
  }
}

class ThemeHelperMethods {
  ThemeHelperMethods(this.brightness);

  final Brightness brightness;

  bool get _isDarkMode => brightness == Brightness.dark;

  Color get blackOrWhite => _isDarkMode ? Colors.white : Colors.black;

  Color get whiteOrBlack => _isDarkMode ? Colors.black : Colors.white;
}
