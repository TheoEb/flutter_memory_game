import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:memory_game/theme/config.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDark = currentTheme.isDark();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 48, horizontal: 12),
        child: Column(
          children: [
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Dark mode",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Switch(
                  value: isDark,
                  onChanged: (value) {
                    setState(() {
                      isDark = value;
                      currentTheme.toggleTheme();
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
