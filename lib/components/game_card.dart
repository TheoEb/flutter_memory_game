import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  var flippable = true;

  void freeze() {
    flippable = false;
  }

  @override
  Widget build(BuildContext context) {
    return FlipCard(
        flipOnTouch: flippable,
        front: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
        back: Container(
          decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}