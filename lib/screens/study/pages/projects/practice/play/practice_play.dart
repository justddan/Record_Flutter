import 'package:flutter/material.dart';
import './routes.dart';
import './screens/splash/splash_screen.dart';
import './theme.dart';

class PracticePlay extends StatelessWidget {
  const PracticePlay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: SplashScreen.routeName,
      routes: route,
    );
  }
}
