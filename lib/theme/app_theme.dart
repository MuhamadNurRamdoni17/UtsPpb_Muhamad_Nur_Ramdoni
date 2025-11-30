import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xff4DA9FF),
    scaffoldBackgroundColor: const Color(0xffE8F4FF),

    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xff4DA9FF),
      primary: const Color(0xff4DA9FF),
      secondary: const Color(0xff1E88E5),
      tertiary: const Color(0xffA8D8FF),
      brightness: Brightness.light,
    ),

    textTheme: GoogleFonts.poppinsTextTheme(),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      elevation: 0,
      centerTitle: true,
    ),

    useMaterial3: true,
  );
}
