import 'package:flutter/material.dart';
import 'package:twitter_clone/core/localicate/circle_avatar_for_story_url.dart';
import 'package:twitter_clone/home_page/home_page.dart';

abstract class BaseStatefulHomePage<T extends StatefulWidget>
    extends State<HomePage> {
  Divider get dividerBold => Divider(
        thickness: 1.25,
      );
      StoryUrl get stroyUrl => StoryUrl.instance;
}
