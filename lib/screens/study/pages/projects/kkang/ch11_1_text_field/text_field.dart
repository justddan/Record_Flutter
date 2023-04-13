import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class KkangTextField extends StatelessWidget {
  const KkangTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "TextField Test",
          ),
        ),
        body: const TestScreen(),
      ),
    );
  }
}

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final controller = TextEditingController();
  int textCounter = 0;

  _printValue() {
    print("_printValue(): ${controller.text}");
    setState(() {
      textCounter = controller.text.length;
    });
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_printValue);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print("build....");
    return Column(
      children: [
        TextField(
          style: const TextStyle(fontSize: 15.0),
          controller: controller,
          decoration: InputDecoration(
            labelText: "Data",
            prefixIcon: const Icon(Icons.input),
            border: const OutlineInputBorder(),
            hintText: "Hint Text",
            helperText: "데이터를 입력하세요.",
            counterText: "$textCounter characters",
          ),
          textInputAction: TextInputAction.search,
          keyboardType: TextInputType.emailAddress,
          minLines: 5,
          maxLines: 5,
        )
      ],
    );
  }
}
