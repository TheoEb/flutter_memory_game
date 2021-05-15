import 'package:flutter/material.dart';
import 'package:memory_game/pages/main_pages/easy.dart';
import 'package:memory_game/pages/main_pages/hard.dart';
import 'package:memory_game/pages/main_pages/medium.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key, this.controller, this.setIndex}) : super(key: key);

  final controller;
  final setIndex;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: widget.controller,
      onPageChanged: widget.setIndex,
      children: <Widget>[
        EasyPage(),
        MediumPage(),
        HardPage(),
      ],
    );
  }
}
