import 'package:flutter/material.dart';
import 'package:twitter_clone/core/compenents/drawer/drawer.dart';
import 'package:twitter_clone/core/compenents/explore/list_view_separated.dart';
import 'package:twitter_clone/core/localicate/explore_page_strings.dart';

class ExplorePageListView extends StatelessWidget {
  final ScrollController controller;
  final Divider divider;
  const ExplorePageListView(
      {Key? key, required this.controller, required this.divider})
      : super(key: key);

  ExplorePageStrings get explorePageStrings => ExplorePageStrings.instance;

  @override
  Widget build(BuildContext context) {
    return _buildListView(context: context);
  }

  ListView _buildListView({required BuildContext context}) {
    return ListView(
      children: [
        divider,
        _buildTitle(context: context),
        divider,
        ExplorePageListViewSeparated(),
        divider,
        _buildShowMore(context: context),
        divider,
      ],
    );
  }

  Padding _buildTitle({required BuildContext context}) => Padding(
        padding: applyPadding.paddingLeftSixteen,
        child: Text(
          explorePageStrings.title,
          style: Theme.of(context).textTheme.headline6,
        ),
      );

  Padding _buildShowMore({required BuildContext context}) => Padding(
        padding: applyPadding.paddingLeftSixteen,
        child: _buildText(
          data: explorePageStrings.showMore,
          style: Theme.of(context).textTheme.headline6!.copyWith(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).colorScheme.secondary),
        ),
      );

  Text _buildText({required String data, required TextStyle style}) =>
      Text(data, style: style);
}
