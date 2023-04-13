import 'package:flutter/material.dart';
import 'package:record_flutter/screens/main_screen.dart';
import 'package:record_flutter/screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  MainScreen.routeName: (context) => const MainScreen(),
};
