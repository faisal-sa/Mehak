import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathon_project/main.dart';

class AppTheme {
  static final ValueNotifier<bool> darkMode = ValueNotifier(
    prefs.getBool("mode") ?? false,
  );

  static final Color white = Colors.white;
  static final Color black = Color(0xff252632);
  static final Color purple = Color(0xff7a15ff);
  static final Color red = Color(0xffff666a);
  static final Color yellow = Color(0xffffb538);
  static final Color blue = Color(0xff01c7dc);
  static final Color green = Color(0xff1a876a);
  static final Color grey = Color(0xff9e9e9e);
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
        headlineLarge: GoogleFonts.ibmPlexSansArabic(
          fontWeight: FontWeight.bold,
          fontSize: 32.w,
          color: isDark ? white : black,
        ),
        headlineMedium: GoogleFonts.ibmPlexSansArabic(
          fontWeight: FontWeight.bold,
          fontSize: 24.w,

          color: isDark ? white : black,
        ),
        headlineSmall: GoogleFonts.ibmPlexSansArabic(
          fontWeight: FontWeight.bold,
          fontSize: 20.w,

          color: isDark ? white : black,
        ),
        titleMedium: GoogleFonts.ibmPlexSansArabic(
          fontWeight: FontWeight.w500,
          fontSize: 18.w,

          color: isDark ? white : black,
        ),
        bodyLarge: GoogleFonts.ibmPlexSansArabic(
          fontSize: 16.w,

          color: isDark ? white : black,
        ),
        bodyMedium: GoogleFonts.ibmPlexSansArabic(
          fontSize: 14.w,

          color: isDark ? white : black,
        ),
        bodySmall: GoogleFonts.ibmPlexSansArabic(
          fontSize: 12.w,

          color: isDark ? white : black,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: GoogleFonts.ibmPlexSansArabic(
            fontSize: 16.w,

            color: isDark ? white : black,
          ),
        ),
      ),
    );
  }
}
