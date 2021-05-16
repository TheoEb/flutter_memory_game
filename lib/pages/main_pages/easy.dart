import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:memory_game/screens/game_screens/easy.dart';

class EasyPage extends StatefulWidget {
  EasyPage({Key key}) : super(key: key);

  @override
  _EasyPageState createState() => _EasyPageState();
}

class _EasyPageState extends State<EasyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: 100,
          horizontal: 12,
        ),
        child: Column(children: [
          Expanded(
            child: Container(),
          ),
          Expanded(
            flex: 5,
            child: Image.asset(
              "images/logo_full.png",
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text("Easy"),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EasyGame()),
                ),
                child: Text(
                  'PLAY',
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
