import 'package:flutter/material.dart';
import 'package:twitter_clone/core/compenents/drawer/drawer.dart';
import 'package:twitter_clone/core/compenents/notification/all/list_tile.dart';

class AllListViewBuilderView extends StatelessWidget {
  final ScrollController controller;

  const AllListViewBuilderView({Key? key, required this.controller})
      : super(key: key);

  Divider get dividerBold => Divider(
        thickness: 1.25,
      );

  @override
  Widget build(BuildContext context) {
    return _buildListViewBuilder;
  }

  ListView get _buildListViewBuilder => ListView.builder(
      controller: controller,
      itemCount: 8,
      itemBuilder: (context, index) =>
          _buildListViewColumn(context: context, index: index));

  Column _buildListViewColumn(
          {required BuildContext context, required int index}) =>
      Column(
        children: [_buildCard(context: context, index: index), dividerBold],
      );

  Card _buildCard({required BuildContext context, required int index}) => Card(
        color: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        child: _buildPaddingListTile(index: index),
      );

  Padding _buildPaddingListTile({required int index}) => Padding(
      padding: applyPadding.paddingLeftSixteen,
      child: AllListTileView(index: index));
}
