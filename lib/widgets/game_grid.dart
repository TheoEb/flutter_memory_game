import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_wall_layout/flutter_wall_layout.dart';
import 'package:memory_game/components/game_card.dart';

class GameGrid extends StatefulWidget {
  GameGrid({Key key, this.size}) : super(key: key);

  final int size;

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

  List<Stone> generateCards(size) {
    cards = List.generate(size * size, (index) {
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

  @override
  Widget build(BuildContext context) {
    return WallLayout(
      layersCount: widget.size,
      stones: generateCards(widget.size),
    );
  }
}
