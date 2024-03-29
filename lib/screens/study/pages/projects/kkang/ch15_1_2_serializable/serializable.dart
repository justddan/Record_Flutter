import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'serializable.g.dart';

class KkangSerializable extends StatefulWidget {
  const KkangSerializable({super.key});

  @override
  State<KkangSerializable> createState() => _KkangSerializableState();
}

@JsonSerializable()
class Location {
  String latitude;
  String longitude;

  Location(this.latitude, this.longitude);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Todo {
  @JsonKey(name: "id")
  int todoId;
  String title;
  bool completed;

  Location location;
  Todo(this.todoId, this.title, this.completed, this.location);
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
  Map<String, dynamic> toJson() => _$TodoToJson(this);
}

class _KkangSerializableState extends State<KkangSerializable> {
  String jsonStr =
      '{"id":1,"title":"HELLO","completed":false,"location":{"latitude":"37.5","longitude":"127.1"}}';
  Todo? todo;
  String result = "";

  onPressDecode() {
    Map<String, dynamic> map = jsonDecode(jsonStr);
    todo = Todo.fromJson(map);
    setState(() {
      result = "decode : ${todo?.toJson()}";
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
          title: const Text("Serializable Test"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(result),
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
