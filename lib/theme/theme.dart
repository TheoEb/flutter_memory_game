import 'package:flutter/material.dart';

class CustomTheme with ChangeNotifier {
  static bool _isDarkTheme = true;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  bool isDark() {
    return _isDarkTheme;
  }

  static ThemeData get lightTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF8877DF),
      ),
      scaffoldBackgroundColor: Color(0xFF8877DF),
      brightness: Brightness.light,
      backgroundColor: Color(0xFF160C31),
      primaryColor: Color(0xFF403A54),
      accentColor: Color(0xFF47D5D7),
      textTheme: ThemeData.dark().textTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFf2ba1d)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
          ),
        ),
      ),
      iconTheme: IconThemeData(
        color: Color(0xFF47D5D7),
        size: 30,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF403A54).withAlpha(128),
        selectedItemColor: Color(0xFF47D5D7),
        unselectedItemColor: Color(0xFF47D5D7),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF47D5D7),
          ),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xFF160C31),
      ),
      scaffoldBackgroundColor: Color(0xFF160C31),
      brightness: Brightness.dark,
      backgroundColor: Color(0xFF160C31),
      primaryColor: Color(0xFF403A54),
      accentColor: Color(0xFF47D5D7),
      textTheme: ThemeData.dark().textTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF8877DF)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
          ),
        ),
      ),
      iconTheme: IconThemeData(
        color: Color(0xFF47D5D7),
        size: 30,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF403A54).withAlpha(128),
        selectedItemColor: Color(0xFF47D5D7),
        unselectedItemColor: Color(0xFF47D5D7),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF47D5D7),
          ),
        ),
      ),
    );
  }
}
