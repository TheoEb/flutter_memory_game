import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_wall_layout/flutter_wall_layout.dart';
import 'package:memory_game/components/game_card.dart';

class GameGrid extends StatelessWidget {

  GameGrid({Key key, this.size}) : super(key: key);

  final size;

  @override
  Widget build(BuildContext context) {
    return WallLayout(
      layersCount: size,
      stones: List.generate(size * size, (index) {
          return Stone(
            id: index,
            width: 1,
            height: 1,
            child: GameCard(),
          );
      }),
    );
  }
}