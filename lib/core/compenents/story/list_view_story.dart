import 'package:flutter/material.dart';

import '../../localicate/circle_avatar_for_story_url.dart';
import 'circle_avatar.dart';

class ListViewStory extends StatelessWidget {
  StoryUrl get storyUrl => StoryUrl.instance;

  @override
  Widget build(BuildContext context) {
    return _buildListViewBuilder;
  }

  ListView get _buildListViewBuilder => ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CircleAvatarForStory(
          url: storyUrl.urls[index],
        ),
        itemCount: storyUrl.urls.length,
      );
}
