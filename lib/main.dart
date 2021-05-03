import 'package:flutter/material.dart';
import 'package:twitter_clone/core/theme/light_theme.dart';
import 'package:twitter_clone/tabbar/tabbar_view.dart';
 
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