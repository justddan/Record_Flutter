import 'dart:convert';
import 'package:flutter/material.dart';

class KkangJson extends StatefulWidget {
  const KkangJson({super.key});

  @override
  State<KkangJson> createState() => _KkangJsonState();
}

class Todo {
  int id;
  String title;
  bool completed;

  Todo(this.id, this.title, this.completed);

  Todo.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        completed = json["completed"];

  Map<String, dynamic> toJson() =>
      {"id": id, "title": title, "completed": completed};
}

class _KkangJsonState extends State<KkangJson> {
  String jsonStr = '{"id": 1, "title":"HELLO","completed":false}';
  Todo? todo;
  String result = "";

  onPressDecode() {
    Map<String, dynamic> map = jsonDecode(jsonStr);
    todo = Todo.fromJson(map);
    setState(() {
      result =
          "decode : id: ${todo?.id}, title: ${todo?.title}, completed: ${todo?.completed}";
    });
  }

  onPressEncode() {
    setState(() {
      result = "encode : ${jsonEncode(todo)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Json Test"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "result : $result",
                style: const TextStyle(color: Colors.black),
              ),
              ElevatedButton(
                onPressed: onPressDecode,
                child: const Text("Decode"),
              ),
              ElevatedButton(
                onPressed: onPressEncode,
                child: const Text("Encode"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
