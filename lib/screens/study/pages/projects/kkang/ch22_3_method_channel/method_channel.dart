import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KkangMethodChannel extends StatelessWidget {
  const KkangMethodChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Channel",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KkangMethodNativeCallWidget(),
    );
  }
}

class KkangMethodNativeCallWidget extends StatefulWidget {
  const KkangMethodNativeCallWidget({super.key});

  @override
  State<KkangMethodNativeCallWidget> createState() =>
      _KkangMethodNativeCallWidgetState();
}

class _KkangMethodNativeCallWidgetState
    extends State<KkangMethodNativeCallWidget> {
  String? resultMessage;
  String? receiveMessage;

  Future<void> nativeCall() async {
    const channel = MethodChannel("myMethodChannel");

    try {
      var details = {"Username": "kkang", "Password": "1234"};
      final Map result = await channel.invokeMethod("oneMethod", details);
      setState(() {
        resultMessage = "${result["one"]}, ${result["two"]}";
      });
      channel.setMethodCallHandler((call) async {
        switch (call.method) {
          case "twoMethod":
            setState(() {
              receiveMessage = "receive : ${call.arguments}";
            });
            return "Reply from Dart";
        }
      });
    } on PlatformException catch (e) {
      print("Failed: '${e.message}'.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Method Channel Test"),
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "resultMessage : $resultMessage",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "receiveMessage : $receiveMessage",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  nativeCall();
                },
                child: Text("native call"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
