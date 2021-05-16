import 'package:flutter/material.dart';
import 'package:memory_game/widgets/game_grid.dart';

class MediumGame extends StatefulWidget {
  MediumGame({Key key}) : super(key: key);

  @override
  _MediumGameState createState() => _MediumGameState();
}

class _MediumGameState extends State<MediumGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        child: Center(
          child: GameGrid(
            size: GridSize.medium,
          ),
        ),
      ),
    );
  }
}
