import 'package:flutter/material.dart';
import 'package:twitter_clone/core/color/light_theme_colors.dart';
import 'package:twitter_clone/core/theme/Itheme.dart';

class LightTheme extends Itheme {
  static LightTheme _instace;
  static LightTheme get instance {
    if (_instace != null) return _instace;
    _instace = LightTheme._init();
    return _instace;
  }

  LightTheme._init();
  LightThemeColors colors = LightThemeColors();

  final ThemeData _lightTheme = ThemeData.light();

  @override
  ThemeData get data => ThemeData(
        appBarTheme: _lightTheme.appBarTheme.copyWith(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.blue),
        ),
        colorScheme: _lightTheme.colorScheme.copyWith(
          onSecondary: colors.shuttleGrey,
          secondary: Colors.blue,
          onSurface: Colors.white,
          surface: Colors.black
        )
        
      );
}
