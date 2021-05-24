import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      // scaffoldBackgroundColor: const Color(0xFF222a3d),
      canvasColor: const Color(0xFF222a3d),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFF222a3d),
        selectedIconTheme: IconThemeData(),
        selectedItemColor: Color(0xFF108cff),
        unselectedItemColor: Color(0xFF9aadce),
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
      primaryColor: const Color(0xFF108cff),
      accentColor: const Color(0xFF353f60),
      appBarTheme: const AppBarTheme(
        // shadowColor: Color(0xFF303D61),
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
      // canvasColor: const Color(0xffffffff),
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
      primaryColor: const Color(0xFF108cff),
      accentColor: const Color(0xFFf6f8fc),
      appBarTheme: const AppBarTheme(
        // shadowColor: Color(0xFF303D61),
        backgroundColor: Color(0xffffffff),
      ),
      cardColor: const Color(0xffffffff),
      fontFamily: 'Roboto',
      primaryTextTheme: Typography.material2018().black,
      textTheme: Typography.material2018().black,
    );
  }
}
