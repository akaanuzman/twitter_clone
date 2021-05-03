import 'package:flutter/material.dart';
import 'package:twitter_clone/core/compenents/drawer/drawer.dart';
import 'package:twitter_clone/core/localicate/explore_page_strings.dart';

class ExplorePageListTile extends StatelessWidget {
  final int index;

  const ExplorePageListTile({Key? key, required this.index}) : super(key: key);
  ExplorePageStrings get explorePageStrings => ExplorePageStrings.instance;
  @override
  Widget build(BuildContext context) {
    return _buildListTile(context: context);
  }

  ListTile _buildListTile({required BuildContext context}) => ListTile(
        title: _buildTitle,
        subtitle: _buildSubTitle(context: context),
        trailing: _buildTrailing,
      );

  Padding get _buildTitle => Padding(
        padding: applyPadding.paddingOnlyBottomFour,
        child: Text(explorePageStrings.listTileTitle),
      );

  Wrap _buildSubTitle({required BuildContext context}) {
    return Wrap(
      spacing: 4,
      direction: Axis.vertical,
      children: [
        _buildText(
          data: explorePageStrings.trendTopics[index],
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 17.5),
        ),
        Text('${explorePageStrings.tweetCount[index]} ${explorePageStrings.tweets}')
      ],
    );
  }

  Text _buildText({required String data, required TextStyle style}) =>
      Text(data, style: style);

  Icon get _buildTrailing => Icon(Icons.expand_more_rounded);
}
