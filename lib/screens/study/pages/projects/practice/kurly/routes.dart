import 'package:flutter/material.dart';
import './screens/details/details_screen.dart';
import './screens/main_screen.dart';
import './screens/signin/signin_screen.dart';
import './screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> route = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  MainScreens.routeName: (context) => const MainScreens(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  DetailScreen.routeName: (context) => const DetailScreen(),
};
