
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_cam/upload_service.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File _file;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text("Cam disto"),
=======
        title: Text("Flutter Cam"),
>>>>>>> master
        actions: [IconButton(icon: Icon(Icons.upload_file), onPressed: _onClickUpload)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Take a Photo',
              style: TextStyle(fontSize: 30),
            ),
            _file != null
                ? Image.file(_file)
                : Image.asset(
                    "assets/images/camera.png",
                    width: 140,
                  ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onClickCamera,
        tooltip: 'Increment',
        child: Icon(Icons.camera),
      ),
    );
  }

  void _onClickCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _file = image;
    });
  }

  void _onClickUpload() {
    if(_file != null){
      UploadService.upload(_file);
    }
  }
}
