import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

enum Answers {
  CAMERA,
  GALLERY,
}

class _ProfileScreenState extends State<ProfileScreen> {
  File _image;
  final picker = ImagePicker();
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    load();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  Future getImage() async {
    switch (await showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Select image picker'),
          children: [
            SimpleDialogOption(
                child: Text("Camera"),
                onPressed: () {
                  Navigator.pop(context, Answers.CAMERA);
                }),
            SimpleDialogOption(
                child: Text("Gallery"),
                onPressed: () {
                  Navigator.pop(context, Answers.GALLERY);
                }),
          ],
        );
      },
    )) {
      case Answers.CAMERA:
        getImageFromCamera();
        break;
      case Answers.GALLERY:
        getImageFromGallery();
        break;
    }
  }

  Future getImageFromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImageFromCamera() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  void save() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setString("imagePath", _image.path);
      prefs.setString("username", textController.text);
    });
  }

  void load() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _image = File(prefs.getString("imagePath"));
      textController.text = prefs.getString("username");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        width: double.infinity,
        color: Theme.of(context).backgroundColor,
        child: Column(children: [
          Container(
            height: 40,
          ),
          GestureDetector(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: _image != null
                  ? FileImage(_image)
                  : NetworkImage(
                      "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png"),
            ),
            onTap: getImage,
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: TextField(
              controller: textController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                  hintText: 'Name'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Best scores'),
                Container(
                  height: 20,
                ),
                Text("Easy"),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(child: Text("00:30")),
                    Expanded(child: Text("00:30")),
                    Expanded(child: Text("00:30")),
                  ],
                ),
                Container(
                  height: 40,
                ),
                Text("Medium"),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(child: Text("00:30")),
                    Expanded(child: Text("00:30")),
                    Expanded(child: Text("00:30")),
                  ],
                ),
                Container(
                  height: 40,
                ),
                Text("Hard"),
                Container(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(child: Text("00:30")),
                    Expanded(child: Text("00:30")),
                    Expanded(child: Text("00:30")),
                  ],
                )
              ],
            ),
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: save,
        child: Icon(Icons.save),
      ),
    );
  }
}
