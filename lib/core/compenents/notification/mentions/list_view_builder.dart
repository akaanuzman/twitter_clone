import 'package:flutter/material.dart';
import 'package:twitter_clone/core/compenents/notification/mentions/list_tile.dart';

class MentionsListViewBuilder extends StatelessWidget {
  final ScrollController controller;

  const MentionsListViewBuilder({Key key, @required this.controller})
      : super(key: key);

  Divider get divider => Divider(
        thickness: 1.25,
      );

  @override
  Widget build(BuildContext context) {
    return _buildListViewBuilder;
  }

  ListView get _buildListViewBuilder => ListView.builder(
        controller: controller,
        itemCount: 10,
        itemBuilder: (context, index) => Column(
          children: [_buildCard(context: context, index: index), divider],
        ),
      );

  Card _buildCard({@required BuildContext context, @required int index}) =>
      Card(
        color: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        child: MentionsListTile(
          index: index,
        ),
      );
}
