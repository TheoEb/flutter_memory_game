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
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HardGame()),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              )),
              backgroundColor: MaterialStateProperty.all(
                Theme.of(context).buttonColor,
              ),
              minimumSize: MaterialStateProperty.all(
                Size.square(100),
              )),
          child: Text(
            'play',
          ),
        ),
      ),
    );
  }
}
