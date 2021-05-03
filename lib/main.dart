import 'package:flutter/material.dart';
import 'package:memory_game/screens/home.dart';


void main() => runApp(MyApp());

BuildContext testContext;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Memory Game',
      theme: ThemeData(
        brightness: Brightness.dark,
        backgroundColor: Color(0xFF160C31),
        primaryColor: Color(0xFF403A54),
        accentColor: Color(0xFF47D5D7),
        buttonColor: Color(0xFF8877DF)
      ),
      home: Home(),
    );
  }
}
