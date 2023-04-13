import 'package:flutter/material.dart';
import './pages/recipe_page.dart';

class IntroductionRecipe extends StatelessWidget {
  const IntroductionRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "PatuaOne"),
      home: const RecipePage(),
    );
  }
}
