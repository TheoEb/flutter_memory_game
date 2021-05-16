import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';

class GameCard extends StatefulWidget {
  GameCard({Key key, this.id, this.type, this.checkMatch}) : super(key: key);

  final id;
  final type;
  final VoidCallback checkMatch;

  @override
  _GameCardState createState() => _GameCardState();
}

class _GameCardState extends State<GameCard> {
  bool flippable = true;
  FlipCardController controller = FlipCardController();

  void freeze() {
    flippable = false;
  }

  void flip() {
    controller.toggleCard();
  }

  Widget getCard() {
    switch (widget.type) {
      case 1:
        {
          return Image.asset("images/card_1.png");
        }
      case 2:
        {
          return Image.asset("images/card_2.png");
        }
      case 3:
        {
          return Image.asset("images/card_3.png");
        }
      case 4:
        {
          return Image.asset("images/card_4.png");
        }
      case 5:
        {
          return Image.asset("images/card_5.png");
        }
      case 6:
        {
          return Image.asset("images/card_6.png");
        }
      case 7:
        {
          return Image.asset("images/card_7.png");
        }
      case 8:
        {
          return Image.asset("images/card_8.png");
        }
      default:
        {
          return Image.asset("images/card_9.png");
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      flipOnTouch: flippable,
      controller: controller,
      onFlip: widget.checkMatch,
      front: Image.asset("images/card.png"),
      back: getCard(),
    );
  }
}
