import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FormError extends StatelessWidget {
  final List<String>? errors;

  const FormError({super.key, this.errors});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        errors?.length ?? 0,
        (index) => Text(
          " * ${errors?[index]}",
          style: const TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
