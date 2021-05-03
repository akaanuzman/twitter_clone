import 'package:flutter/material.dart';

import '../drawer/drawer.dart';
import 'list_tile.dart';

class MessagePageListViewBuilder extends StatelessWidget {
  final ScrollController controller;
  const MessagePageListViewBuilder({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildListViewBuilder;
  }

  ListView get _buildListViewBuilder => ListView.builder(
        controller: controller,
        itemCount: 10,
        itemBuilder: (context, index) => Column(
          children: [
            divider,
            _buildCard(context: context),
          ],
        ),
      );

  Card _buildCard({required BuildContext context}) => Card(
        color: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        child: MessagePageListTile(),
      );
}
