import 'package:flutter/material.dart';

import '../core/compenents/notification/all/list_view_builder.dart';
import '../core/compenents/notification/mentions/list_view_builder.dart';
import 'notification_page_view_model.dart';

class NotificationPageView extends NotificationPageViewModel {
  final ScrollController controller;

  NotificationPageView(this.controller);
  @override
  Widget build(BuildContext context) {
    return _buildDefaultTabController;
  }

  DefaultTabController get _buildDefaultTabController => DefaultTabController(
        length: 2,
        child: Scaffold(
          body: _buildBody,
        ),
      );

  Column get _buildBody => Column(
        children: [
          Expanded(
            child: _buildTabBar,
          ),
          Expanded(
            flex: 9,
            child: _buildTabBarView,
          ),
        ],
      );

  TabBar get _buildTabBar => TabBar(tabs: [
        Center(
            child: _buildText(
                data: notificationPageString.tabBarTitle[0],
                style: tabBarText)),
        Center(
            child: _buildText(
                data: notificationPageString.tabBarTitle[1], style: tabBarText))
      ]);

  Text _buildText({required String data, required TextStyle style}) =>
      Text(data, style: style);

  TabBarView get _buildTabBarView => TabBarView(
        children: [
          AllListViewBuilderView(
            controller: controller,
          ),
          MentionsListViewBuilder(
            controller: controller,
          )
        ],
      );
}
