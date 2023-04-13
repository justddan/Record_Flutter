import 'package:flutter/material.dart';
import './routes.dart';
import './screens/splash/splash_screen.dart';
import './theme.dart';

class PracticeKurly extends StatelessWidget {
  const PracticeKurly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Market Kurly UI",
      initialRoute: SplashScreen.routeName,
      routes: route,
      theme: theme(),
    );
  }
}
