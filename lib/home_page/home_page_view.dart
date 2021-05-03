import 'package:flutter/material.dart';

import '../core/compenents/drawer/drawer.dart';
import '../core/compenents/post/post_list_tile_builder.dart';
import '../core/compenents/story/list_view_story.dart';
import 'home_page_view_model.dart';

class HomePageView extends HomePageViewModel {
  final ScrollController controller;

  HomePageView({required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: BuildDrawer(),
      body: _buildBody,
    );
  }

  Column get _buildBody => Column(
        children: [
          dividerBold,
          Expanded(child: ListViewStory()),
          dividerBold,
          Expanded(
            flex: 10,
            child: PostListTileBuilder(
              controller: controller,
              storyUrl: stroyUrl,
              divider: dividerBold,
            ),
          ),
        ],
      );
}
