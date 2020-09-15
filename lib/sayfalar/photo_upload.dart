import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PhotoUpload extends StatefulWidget {
  @override
  _FavoriPageState createState() => _FavoriPageState();
}

class _FavoriPageState extends State<PhotoUpload> {
  File sampleImage;

  Future getImage() async {
    // ignore: deprecated_member_use
    var tempImage = await ImagePicker.pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      sampleImage = tempImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: <Widget>[
            TextField(
                keyboardType: TextInputType.text,
                maxLength: 100,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.arrow_forward),
                  hintText: "Başlık Ekle",
                  labelText: "Başlık",
                  filled: true,
                )),
            TextField(
                keyboardType: TextInputType.text,
                maxLength: 1000,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.assignment),
                  hintText: "İçerik Ekle",
                  labelText: "İçerik",
                  filled: true,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        child: Icon(Icons.camera_enhance),
      ),
    );
  }
}
