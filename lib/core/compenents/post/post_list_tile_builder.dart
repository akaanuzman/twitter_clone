import 'package:flutter/material.dart';
import 'package:twitter_clone/core/compenents/post/post_list_tile.dart';
import 'package:twitter_clone/core/localicate/circle_avatar_for_story_url.dart';

class PostListTileBuilder extends StatelessWidget {
  final ScrollController controller;
  final StoryUrl storyUrl;
  final Divider divider;

  const PostListTileBuilder(
      {Key? key,
      required this.controller,
      required this.storyUrl,
      required this.divider})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildListViewBuilder;
  }

  ListView get _buildListViewBuilder => ListView.builder(
        itemCount: storyUrl.urls.length,
        controller: controller,
        itemBuilder: (context, index) => Column(
          children: [
            PostListTile(
              index: index,
              storyUrl: storyUrl,
            ),
            divider,
          ],
        ),
      );
}
