import 'package:flutter/material.dart';
import './constants.dart';

ThemeData theme() {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(color: Colors.black),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: kTextColor,
      ),
    ),
  );
}
