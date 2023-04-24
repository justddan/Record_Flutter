import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class KkangImagePicker extends StatelessWidget {
  const KkangImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: KkangImagePickerNativePluginWidget(),
    );
  }
}

class KkangImagePickerNativePluginWidget extends StatefulWidget {
  const KkangImagePickerNativePluginWidget({super.key});

  @override
  State<KkangImagePickerNativePluginWidget> createState() =>
      _KkangImagePickerNativePluginWidgetState();
}

class _KkangImagePickerNativePluginWidgetState
    extends State<KkangImagePickerNativePluginWidget> {
  XFile? _image;

  Future getGalleryImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  Future getCameraImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker Test"),
      ),
      body: Container(
        color: Colors.indigo,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: getGalleryImage,
              child: Text("gallery"),
            ),
            Center(
              child: _image == null
                  ? Text(
                      "No image selected",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  : CircleAvatar(
                      backgroundImage: FileImage(File(_image!.path)),
                      radius: 100,
                    ),
            ),
            ElevatedButton(
              onPressed: getCameraImage,
              child: Text("camera"),
            ),
          ],
        ),
      ),
    );
  }
}
