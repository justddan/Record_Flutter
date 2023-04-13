import 'package:flutter/material.dart';
import '../size.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;

  const CustomTextFormField({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        const SizedBox(
          height: small_gap,
        ),
        TextFormField(
          validator: (value) =>
              value!.isEmpty ? "Please enter some text" : null,
          obscureText: text == "Password" ? true : false,
          decoration: InputDecoration(
            hintText: "Enter $text",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        )
      ],
    );
  }
}
