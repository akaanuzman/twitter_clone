import 'package:flutter/material.dart';

import '../../../localicate/pages_string.dart';
import '../../../padding/padding.dart';

class AllListTileView extends StatelessWidget {
  PagesString get notificationPageString => PagesString.instance;

  ApplyPadding get applyPadding => ApplyPadding.instance;

  final int index;

  const AllListTileView({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildListTile(context: context);
  }

  ListTile _buildListTile({required BuildContext context}) => ListTile(
        title: _buildWrapListTile(context: context),
        subtitle: _buildPaddingWrapFollowedText(context: context),
      );

  Wrap _buildWrapListTile({required BuildContext context}) => Wrap(
        spacing: 4,
        children: [
          _buildLeadingIcon(context: context),
          _buildFollowerImage,
          _buildFollowerImage,
          _buildFollowerImage,
          _buildFollowerImage,
        ],
      );

  Icon _buildLeadingIcon({required BuildContext context}) => Icon(
        Icons.person,
        color: Theme.of(context).colorScheme.secondary,
        size: 36,
      );

  CircleAvatar get _buildFollowerImage => CircleAvatar(
        backgroundImage: NetworkImage(notificationPageString.url),
        radius: 16,
      );

  Padding _buildPaddingWrapFollowedText({required BuildContext context}) =>
      Padding(
        padding: applyPadding.paddingL44T4RB,
        child: _buildWrapFollowedText(context: context),
      );

  Wrap _buildWrapFollowedText({required BuildContext context}) => Wrap(
        children: [
          _buildFollowedText(
              text: notificationPageString.username,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold)),
          _buildFollowedText(
              text: notificationPageString.followedText,
              style: Theme.of(context).textTheme.subtitle1!),
        ],
      );

  Text _buildFollowedText({required String text, required TextStyle style}) =>
      Text(
        text,
        style: style,
      );
}
