import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:memory_game/pages/main_page.dart';
import 'package:memory_game/widgets/app_bar.dart';
import 'package:memory_game/widgets/nav_bar.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _index = 0;
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _animateToPage(int index) {
    setState(() {
      _index = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.easeOut);
    });
  }

  void _setIndex(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: HomeAppBar(),
      body: MainPage(
        controller: _pageController,
        setIndex: _setIndex,
      ),
      bottomNavigationBar: NavigationBar(
        index: _index,
        onTap: _animateToPage,
      ),
    );
  }
}
