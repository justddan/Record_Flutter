import 'package:flutter/material.dart';

class KkangRestUserInput extends StatelessWidget {
  const KkangRestUserInput({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Rest User Input"),
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
  bool? isChecked = true;
  String? selectPlatform;
  double sliderValue = 5.0;
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Checkbox Test"),
        Row(
          children: [
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            Text("checkbox value is $isChecked"),
          ],
        ),
        const Text("Radio Test"),
        Row(
          children: [
            Radio(
              value: "android",
              groupValue: selectPlatform,
              onChanged: (String? value) {
                setState(() {
                  selectPlatform = value;
                });
              },
            ),
            const Text("android"),
          ],
        ),
        Row(
          children: [
            Radio(
              value: "ios",
              groupValue: selectPlatform,
              onChanged: (String? value) {
                setState(() {
                  selectPlatform = value;
                });
              },
            ),
            const Text("ios"),
          ],
        ),
        Text("select platform is $selectPlatform"),
        const Text("Slider Test"),
        Slider(
          value: sliderValue,
          min: 0,
          max: 10,
          onChanged: (double value) {
            setState(() {
              sliderValue = value;
            });
          },
        ),
        Text("slider value is $sliderValue"),
        const Text("Switch Test"),
        Switch(
          value: switchValue,
          onChanged: (bool value) {
            setState(() {
              switchValue = value;
            });
          },
        ),
        Text("select value is $switchValue"),
      ],
    );
  }
}
