import 'package:flutter/material.dart';
import 'package:memory_game/theme/config.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Center(
        child: IconButton(
          icon: const Icon(Icons.brightness_4),
          onPressed: () => currentTheme.toggleTheme(),
        ),
      ),
    );
  }
}
