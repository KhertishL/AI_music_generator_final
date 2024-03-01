import 'package:flutter/material.dart';
import 'package:ai_music_generator/themes/light_mode.dart' as l;
import 'package:ai_music_generator/themes/dark_mode.dart' as d;
import 'package:ai_music_generator/themes/happy.dart' as happy;
import 'package:ai_music_generator/themes/sad.dart' as sad;
import 'package:ai_music_generator/themes/chill.dart' as chill;

class ThemeProvider extends ChangeNotifier {
  //initially, light mode
  ThemeData _themeData = l.lightMode;

  //get theme data
  ThemeData get themeData => _themeData;

  //is dark mode
  bool get isDarkMode => _themeData == d.darkMode;

  //set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    //update UI
    notifyListeners();
  }

  //toggle theme
  void toggleTheme() {
    if (_themeData == l.lightMode) {
      themeData = d.darkMode;
    } else {
      themeData = l.lightMode;
    }
  }
}
