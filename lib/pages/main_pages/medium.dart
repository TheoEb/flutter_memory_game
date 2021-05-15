import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:memory_game/screens/game_screens/medium.dart';

class MediumPage extends StatefulWidget {
  MediumPage({Key key}) : super(key: key);

  @override
  _MediumPageState createState() => _MediumPageState();
}

class _MediumPageState extends State<MediumPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MediumGame()),
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
