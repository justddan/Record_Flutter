import 'package:flutter/material.dart';
import '../components/logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            const Logo(
              title: "Care Soft",
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Get Started"),
            )
          ],
        ),
      ),
    );
  }
}
