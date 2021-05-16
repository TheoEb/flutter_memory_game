import 'package:flutter/material.dart';
import 'package:memory_game/widgets/game_grid.dart';

class HardGame extends StatefulWidget {
  HardGame({Key key}) : super(key: key);

  @override
  _HardGameState createState() => _HardGameState();
}

class _HardGameState extends State<HardGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        child: Center(
          child: GameGrid(
            size: GridSize.large,
          ),
        ),
      ),
    );
  }
}
