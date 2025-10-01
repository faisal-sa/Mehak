import 'package:flutter/material.dart';
import 'package:hackathon_project/main.dart';

class AppTheme {
  static final ValueNotifier<bool> darkMode = ValueNotifier(
    prefs.getBool("mode") ?? false,
  );

  static final Color white = Colors.white;
  static final Color black = Color(0xff1a0040);
  static final Color purple = Color(0xff7a15ff);
  static final Color red = Color(0xffff666a);
  static final Color yellow = Color(0xffffb538);
  static final Color blue = Color(0xff01c7dc);
  static final Color green = Color(0xff5cdb63);
  static final Color grey = Color(0xffc4c4c4);
  static final Color lightPurple = Color(0xff2f0066);
  static final Color neon = Color(0xff8c62d4);
  static ThemeData getTheme(bool isDark) {
    return ThemeData(
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: isDark ? white : purple,
        unselectedItemColor: isDark ? neon : Colors.grey,
        showUnselectedLabels: true,
        backgroundColor: isDark ? lightPurple : white,
        elevation: 10,
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: TextStyle(fontSize: 14),
      ),
      scaffoldBackgroundColor: isDark ? black : white,
      listTileTheme: ListTileThemeData(
        iconColor: isDark ? white : black,
        subtitleTextStyle: TextStyle(
          color: isDark ? white : grey,
          fontSize: 18,
        ),
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 32,
          color: isDark ? white : black,
        ),
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 26,
          color: isDark ? white : black,
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 24,
          color: isDark ? white : black,
        ),
      ),
    );
  }
}
