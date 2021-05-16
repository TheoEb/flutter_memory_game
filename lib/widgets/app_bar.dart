import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:memory_game/screens/profile.dart';
import 'package:memory_game/screens/settings.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _HomeAppBarState createState() => _HomeAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(100);
}

class _HomeAppBarState extends State<HomeAppBar> {
  File _image;

  @override
  void initState() {
    super.initState();
    loadImage();
  }

  void loadImage() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _image = File(prefs.getString("imagePath"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      flexibleSpace: Container(
        margin: EdgeInsets.only(top: 40, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              ),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: _image != null
                    ? FileImage(_image)
                    : NetworkImage(
                        "https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png"),
              ),
            ),
            IconButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              ),
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
      elevation: 0,
    );
  }
}
