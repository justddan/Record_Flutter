import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KkangMessageChannel extends StatelessWidget {
  const KkangMessageChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Channel",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KkangMessageNativeCallWidget(),
    );
  }
}

class KkangMessageNativeCallWidget extends StatefulWidget {
  const KkangMessageNativeCallWidget({super.key});

  @override
  State<KkangMessageNativeCallWidget> createState() =>
      _KkangMessageNativeCallWidgetState();
}

class _KkangMessageNativeCallWidgetState
    extends State<KkangMessageNativeCallWidget> {
  String? resultMessage;
  String? receiveMessage;

  Future<void> nativeCall() async {
    const channel =
        BasicMessageChannel<String>("myMessageChannel", StringCodec());
    String? result = await channel.send("Hello from Dart");

    setState(() {
      resultMessage = result;
    });

    channel.setMessageHandler((String? message) async {
      setState(() {
        receiveMessage = message;
      });
      return "Reply from Dart";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Message Channel Test"),
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
