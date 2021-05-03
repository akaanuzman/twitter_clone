import 'package:flutter/material.dart';
import 'package:twitter_clone/core/localicate/pages_string.dart';
import 'package:twitter_clone/core/padding/padding.dart';
import 'package:twitter_clone/notification_page/notification_page.dart';

abstract class BaseStatefulNotificationPage<T extends StatefulWidget>
    extends State<NotificationPage> {
  //* TextStyle
  TextTheme get textTheme => Theme.of(context).textTheme;
  TextStyle get tabBarText =>
      textTheme.bodyText1!.copyWith(color: colorScheme.secondary, fontSize: 18);
  TextStyle get followedText =>
      textTheme.subtitle1!.copyWith(fontWeight: FontWeight.bold);

  Duration get duration500ms => Duration(milliseconds: 500);

  ColorScheme get colorScheme => Theme.of(context).colorScheme;
  Color get secondary => colorScheme.secondary;
  Color get transparent => Theme.of(context).appBarTheme.backgroundColor!;
  Divider get dividerBold => Divider(
        thickness: 1.25,
      );

  ApplyPadding get applyPaddingHomePage => ApplyPadding.instance;
  PagesString get notificationPageString => PagesString.instance;
}
