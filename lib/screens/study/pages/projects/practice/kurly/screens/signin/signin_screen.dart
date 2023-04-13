import 'package:flutter/material.dart';
import '../signin/components/kurly_sign_form.dart';
import '../../theme.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/sign_in";

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "로그인",
          style: textTheme().titleMedium?.copyWith(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const KurlySignForm(),
    );
  }
}
