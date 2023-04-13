import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: kPrimaryColor,
      elevation: 0.0,
    ),
    primaryColor: kPrimaryColor,
    textSelectionTheme:
        const TextSelectionThemeData(cursorColor: kPrimaryColor),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    displayLarge:
        GoogleFonts.nanumGothic(fontSize: 18.0, fontWeight: FontWeight.bold),
    displayMedium:
        GoogleFonts.nanumGothic(fontSize: 16.0, fontWeight: FontWeight.bold),
    titleMedium: GoogleFonts.nanumGothic(fontSize: 16.0),
    bodyLarge: GoogleFonts.nanumGothic(fontSize: 15.0),
    bodyMedium: GoogleFonts.nanumGothic(fontSize: 14.0),
  );
}
