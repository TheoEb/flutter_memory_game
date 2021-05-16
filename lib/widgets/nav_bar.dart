import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key, this.index, this.onTap}) : super(key: key);

  final index;
  final ValueChanged<int> onTap;

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.indicator,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      padding: EdgeInsets.all(12),
      currentIndex: widget.index,
      onTap: (index) => widget.onTap(index),
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "icons/easy.svg",
            width: 24,
            color: Theme.of(context).accentColor,
          ),
          label: 'easy',
        ),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "icons/medium.svg",
              width: 24,
              color: Theme.of(context).accentColor,
            ),
            label: 'medium'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "icons/hard.svg",
              width: 24,
              color: Theme.of(context).accentColor,
            ),
            label: 'hard')
      ],
    );
  }
}
