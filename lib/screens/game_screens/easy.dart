import 'package:flutter/material.dart';
import 'package:memory_game/widgets/game_grid.dart';

class EasyGame extends StatefulWidget {
  EasyGame({Key key}) : super(key: key);

  @override
  _EasyGameState createState() => _EasyGameState();
}

class _EasyGameState extends State<EasyGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        child: Center(
          child: GameGrid(
            size: 3,
          ),
        ),
      ),
    );
  }
}
