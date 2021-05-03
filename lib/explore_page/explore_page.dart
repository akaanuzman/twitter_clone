import 'package:flutter/material.dart';

import 'explore_page_view.dart';

class ExplorePage extends StatefulWidget {
  final ScrollController controller;

  const ExplorePage({Key? key, required this.controller}) : super(key: key);
  @override
  ExplorePageView createState() => new ExplorePageView(controller: controller);
}
