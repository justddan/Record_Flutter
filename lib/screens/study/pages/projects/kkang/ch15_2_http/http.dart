import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class KkangHttp extends StatefulWidget {
  const KkangHttp({super.key});

  @override
  State<KkangHttp> createState() => _KkangHttpState();
}

class _KkangHttpState extends State<KkangHttp> {
  String result = "";

  onPressGet() async {
    Map<String, String> headers = {
      "content-type": "application/json",
      "accept": "application/json",
    };
    http.Response response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
      headers: headers,
    );
    if (response.statusCode == 200) {
      setState(() {
        result = response.body;
      });
    } else {
      print("error......");
    }
  }

  onPressPost() async {
    try {
      http.Response response = await http.post(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        body: {"title": "hello", "body": "world", "userId": "1"},
      );
      print("statusCode : ${response.statusCode}");
      if (response.statusCode == 200 || response.statusCode == 201) {
        setState(() {
          result = response.body;
        });
      } else {
        print("error......");
      }
    } catch (e) {
      print("error ... $e");
    }
  }

  onPressClient() async {
    var client = http.Client();
    try {
      http.Response response = await client.post(
        Uri.parse("https://jsonplaceholder.typicode.com/posts"),
        body: {"title": "hello", "body": "world", "userId": "1"},
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        response = await client.get(
          Uri.parse("https://jsonplaceholder.typicode.com/posts/1"),
        );
        setState(() {
          result = response.body;
        });
      } else {
        print("error......");
      }
    } finally {
      client.close();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Http Test"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(result),
              ElevatedButton(
                onPressed: onPressGet,
                child: const Text("Get"),
              ),
              ElevatedButton(
                onPressed: onPressPost,
                child: const Text("Post"),
              ),
              ElevatedButton(
                onPressed: onPressClient,
                child: const Text("Client"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
