import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:memory_game/screens/game_screens/hard.dart';

class HardPage extends StatefulWidget {
  HardPage({Key key}) : super(key: key);

  @override
  _HardPageState createState() => _HardPageState();
}

class _HardPageState extends State<HardPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 200,
        bottom: 100,
        left: 12,
        right: 12,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            "images/logo_full.png",
            fit: BoxFit.fitWidth,
          ),
          Image.asset(
            "images/hard_mode.png",
            fit: BoxFit.fitWidth,
          ),
          Container(
            height: kBottomNavigationBarHeight,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HardGame()),
              ),
              child: Text(
                'PLAY',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
