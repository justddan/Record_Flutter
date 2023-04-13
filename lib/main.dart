import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:record_flutter/routes.dart';
import 'package:record_flutter/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: route,
    );
  }
}
