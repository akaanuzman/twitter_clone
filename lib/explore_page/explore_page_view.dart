import 'package:flutter/material.dart';

import '../core/compenents/drawer/drawer.dart';
import '../core/compenents/explore/list_view.dart';
import 'explore_page_view_model.dart';

class ExplorePageView extends ExplorePageViewModel {
  final ScrollController controller;

  ExplorePageView({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExplorePageListView(
        controller: controller,
        divider: divider,
      ),
    );
  }
}
