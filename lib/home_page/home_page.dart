import 'package:flutter/material.dart';
import 'home_page_view.dart';

class HomePage extends StatefulWidget {

  final ScrollController controller;

  const HomePage({Key key, @required this.controller}) : super(key: key);
  
  @override
  HomePageView createState() => new HomePageView(controller: controller);
}
  
