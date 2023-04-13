import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class KkangForm extends StatelessWidget {
  const KkangForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Form Test"),
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
  final _formKey = GlobalKey<FormState>();
  String? firstName;
  String? lastName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "FirstName"),
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return "Please enter first name";
                  }
                  return null;
                },
                onSaved: (String? value) {
                  firstName = value;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "LastName"),
                validator: (value) {
                  if (value?.isEmpty ?? false) {
                    return "Please enter last name";
                  }
                  return null;
                },
                onSaved: (String? value) {
                  lastName = value;
                },
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              _formKey.currentState?.save();
              print("firstName: $firstName, lastName: $lastName");
            }
          },
          child: const Text("Submit"),
        )
      ],
    );
  }
}
