import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KkangEventChannel extends StatelessWidget {
  const KkangEventChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Channel",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KkangEventChannelNativeCallWidget(),
    );
  }
}

class KkangEventChannelNativeCallWidget extends StatefulWidget {
  const KkangEventChannelNativeCallWidget({super.key});

  @override
  State<KkangEventChannelNativeCallWidget> createState() =>
      _KkangEventChannelNativeCallWidgetState();
}

class _KkangEventChannelNativeCallWidgetState
    extends State<KkangEventChannelNativeCallWidget> {
  String? receiveMessage;

  Future<void> nativeCall() async {
    const channel = EventChannel("eventChannel");
    channel.receiveBroadcastStream().listen((dynamic event) {
      setState(() {
        receiveMessage = "Received event: $event";
      });
    }, onError: (dynamic error) {
      print("Received error: ${error.message}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Channel Test"),
      ),
      body: Container(
        color: Colors.deepPurpleAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
