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

  Color getColor() {
    switch (widget.type) {
      case 1:
        {
          return Colors.blue;
        }
      case 2:
        {
          return Colors.lightBlue;
        }
      case 3:
        {
          return Colors.green;
        }
      case 4:
        {
          return Colors.lightGreen;
        }
      case 5:
        {
          return Colors.yellow;
        }
      case 6:
        {
          return Colors.orange;
        }
      case 7:
        {
          return Colors.deepOrange;
        }
      case 8:
        {
          return Colors.red;
        }
      case 9:
        {
          return Colors.purple;
        }
      case 10:
        {
          return Colors.deepPurple;
        }
      case 11:
        {
          return Colors.brown;
        }
      case 12:
        {
          return Colors.grey;
        }
      default:
        {
          return Colors.black;
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      flipOnTouch: flippable,
      controller: controller,
      onFlip: widget.checkMatch,
      front: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        child: Text(widget.type.toString()),
      ),
      back: Container(
        decoration: BoxDecoration(
          color: getColor(),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
