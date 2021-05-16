import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_wall_layout/flutter_wall_layout.dart';
import 'package:memory_game/components/game_card.dart';

enum GridSize { small, medium, large }

class GameGrid extends StatefulWidget {
  GameGrid({Key key, this.size}) : super(key: key);

  final GridSize size;

  @override
  _GameGridState createState() => _GameGridState();
}

class _GameGridState extends State<GameGrid> {
  List<Stone> cards;
  bool flipped = false;
  int flippedCardId;
  int flippedCardType;

  List<Stone> shuffle(List<Stone> stones) {
    stones.shuffle();
    return stones;
  }

  void checkMatch() {
    flipped = !flipped;
  }

  List<Stone> generateCards() {
    int nb = 0;
    switch (widget.size) {
      case GridSize.small:
        nb = 6;
        break;
      case GridSize.medium:
        nb = 12;
        break;
      case GridSize.large:
        nb = 16;
        break;
    }
    cards = List.generate(nb, (index) {
      return Stone(
        id: index,
        width: 1,
        height: 1,
        child: GameCard(
            id: index, type: (index / 2).floor() + 1, checkMatch: checkMatch),
      );
    });
    return shuffle(cards);
  }

  int getSize() {
    switch (widget.size) {
      case GridSize.small:
        return 3;
      case GridSize.medium:
        return 4;
      case GridSize.large:
        return 4;
    }
    return 3;
  }

  @override
  Widget build(BuildContext context) {
    return WallLayout(
      layersCount: getSize(),
      stones: generateCards(),
    );
  }
}
