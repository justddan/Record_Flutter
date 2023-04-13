import 'package:flutter/material.dart';
import '../components/custom_form.dart';
import '../components/logo.dart';
import '../size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const SizedBox(
              height: xlarge_gap,
            ),
            const Logo(
              title: "Login",
            ),
            const SizedBox(
              height: large_gap,
            ),
            CustomForm(),
          ],
        ),
      ),
    );
  }
}
