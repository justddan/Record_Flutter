import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KkangSharedPreferences extends StatelessWidget {
  const KkangSharedPreferences({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KkangSharedPreferencesNativePluginWidget(),
    );
  }
}

class KkangSharedPreferencesNativePluginWidget extends StatefulWidget {
  const KkangSharedPreferencesNativePluginWidget({super.key});

  @override
  State<KkangSharedPreferencesNativePluginWidget> createState() =>
      _KkangSharedPreferencesNativePluginWidgetState();
}

class _KkangSharedPreferencesNativePluginWidgetState
    extends State<KkangSharedPreferencesNativePluginWidget> {
  late SharedPreferences prefs;

  double sliderValue = 0.0;
  bool switchValue = false;

  _save() async {
    await prefs.setDouble("slider", sliderValue);
    await prefs.setBool("switch", switchValue);
  }

  getInitData() async {
    prefs = await SharedPreferences.getInstance();
    sliderValue = prefs.getDouble("slider") ?? 0.0;
    switchValue = prefs.getBool("switch") ?? false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getInitData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferences Test"),
      ),
      body: Container(
        color: Colors.yellow,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
              Switch(
                value: switchValue,
                onChanged: (bool value) {
                  setState(() {
                    switchValue = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: _save,
                child: Text("Save"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
