import 'package:flutter/material.dart';

import 'core/theme/light_theme.dart';
import 'tabbar/tabbar_view.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme.instance.data,
      home: TweeterTabbarView()
    );
  }
}