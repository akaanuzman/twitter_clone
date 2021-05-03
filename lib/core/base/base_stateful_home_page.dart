import 'package:flutter/material.dart';

import '../../home_page/home_page.dart';
import '../localicate/circle_avatar_for_story_url.dart';

abstract class BaseStatefulHomePage<T extends StatefulWidget>
    extends State<HomePage> {
  Divider get dividerBold => Divider(
        thickness: 1.25,
      );
      StoryUrl get stroyUrl => StoryUrl.instance;
}
