import 'package:flutter/material.dart';

import '../../localicate/drawer_strings.dart';
import '../../padding/padding.dart';

Divider get divider => Divider(
      thickness: 1.25,
    );

ApplyPadding get applyPadding => ApplyPadding.instance;

DrawerStrings get drawerStrings => DrawerStrings.instance;

final TextStyle boldText = TextStyle(fontWeight: FontWeight.bold);

class BuildDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildDrawer(context);
  }
}

Drawer _buildDrawer(BuildContext context) {
  return Drawer(
    child: _buildDrawerColumn(context),
  );
}

Column _buildDrawerColumn(BuildContext context) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: _buildFirstContainer(context),
      ),
      divider,
      Expanded(
        flex: 3,
        child: _buildSecondContainer(context),
      ),
      divider,
      Expanded(
        child: _buildThirthContainer(context),
      ),
      divider,
      Expanded(flex: 3, child: _buildFourthContainer(context)),
      divider,
      Expanded(child: _buildLastContainer(context)),
    ],
  );
}

Padding _buildFirstContainer(BuildContext context) {
  return Padding(
    padding: applyPadding.paddingLeftTwenty,
    child: _buildFirstContainerColumn(context),
  );
}

Column _buildFirstContainerColumn(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CircleAvatar(
        backgroundImage: NetworkImage(drawerStrings.imageUrl),
      ),
      Text(
        drawerStrings.nameText,
        style: Theme.of(context).textTheme.headline6,
      ),
      Text(drawerStrings.usernameText),
      _buildFirstContainerColumnRow(),
    ],
  );
}

Row _buildFirstContainerColumnRow() {
  return Row(
    children: [
      _buildFirstContainerWrap(
          drawerStrings.followingCount, drawerStrings.following),
      Padding(
          padding: applyPadding.paddingLeftTwelf,
          child: _buildFirstContainerWrap(
              drawerStrings.followersCount, drawerStrings.followers))
    ],
  );
}

Padding _buildSecondContainer(BuildContext context) {
  return Padding(
    padding: applyPadding.paddingLeftTwenty,
    child: _buildSecondContainerColumn(context),
  );
}

Column _buildSecondContainerColumn(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildDrawerSecondContainerWrap(
          Icons.person_outline, drawerStrings.profile, context),
      _buildDrawerSecondContainerWrap(
          Icons.article_outlined, drawerStrings.lists, context),
      _buildDrawerSecondContainerWrap(
          Icons.library_books_outlined, drawerStrings.topics, context),
      _buildDrawerSecondContainerWrap(
          Icons.bookmark_border, drawerStrings.bookmarks, context),
      _buildDrawerSecondContainerWrap(
          Icons.flash_on_rounded, drawerStrings.moments, context),
    ],
  );
}

Padding _buildThirthContainer(BuildContext context) {
  return Padding(
    padding: applyPadding.paddingLeftTwenty,
    child: Align(
      alignment: Alignment.centerLeft,
      child: _buildThirthContainerWrap(context),
    ),
  );
}

Wrap _buildThirthContainerWrap(BuildContext context) {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    spacing: 7,
    children: [
      _buildDrawerIcon(Icons.launch, Theme.of(context).colorScheme.onSecondary),
      _buildDrawerSubtitleOneText(drawerStrings.twitterAds, context),
    ],
  );
}

Padding _buildFourthContainer(BuildContext context) {
  return Padding(
    padding: applyPadding.paddingLeftTwenty,
    child: _buildFourthContainerColumn(context),
  );
}

Column _buildFourthContainerColumn(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(height: 15),
      _buildDrawerSubtitleOneText(drawerStrings.settingsAndPrivacy, context),
      SizedBox(height: 15),
      _buildDrawerSubtitleOneText(drawerStrings.helpCenter, context),
    ],
  );
}

Padding _buildLastContainer(BuildContext context) {
  return Padding(
    padding: applyPadding.paddingL20TR10B,
    child: _buildLastContainerRow(context),
  );
}

Row _buildLastContainerRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildDrawerIcon(
          Icons.lightbulb_outline, Theme.of(context).colorScheme.secondary),
      _buildDrawerIcon(
          Icons.privacy_tip_outlined, Theme.of(context).colorScheme.secondary)
    ],
  );
}

Icon _buildDrawerIcon(IconData icon, Color color) {
  return Icon(
    icon,
    color: color,
  );
}

Text _buildDrawerSubtitleOneText(String data, BuildContext context) {
  return Text(
    data,
    style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 14),
  );
}

Wrap _buildDrawerSecondContainerWrap(
    IconData icon, String data, BuildContext context) {
  return Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    spacing: 7,
    children: [
      Icon(icon, color: Theme.of(context).colorScheme.onSecondary),
      _buildDrawerSubtitleOneText(data, context),
    ],
  );
}

Wrap _buildFirstContainerWrap(String data, String secondData) {
  return Wrap(
    spacing: 2.4,
    children: [
      Text(
        data,
        style: boldText,
      ),
      Text(secondData)
    ],
  );
}
