import 'package:flutter/material.dart';
import 'package:twitter_clone/core/compenents/drawer/drawer.dart';
import 'package:twitter_clone/core/compenents/explore/list_tile.dart';

class ExplorePageListViewSeparated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildListViewSeparated;
  }

  ListView get _buildListViewSeparated => ListView.separated(
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: (context, index) =>
            _buildCard(context: context, index: index),
        separatorBuilder: (context, index) => divider,
      );

  Card _buildCard({@required BuildContext context, @required int index}) =>
      Card(
          color: Theme.of(context).appBarTheme.backgroundColor,
          elevation: 0,
          child: ExplorePageListTile(index: index));
}
