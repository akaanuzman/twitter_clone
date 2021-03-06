import 'package:flutter/material.dart';

import 'notification_page_view.dart';

class NotificationPage extends StatefulWidget {

  final ScrollController controller;

  const NotificationPage({Key? key, required this.controller}) : super(key: key);

  @override
  NotificationPageView createState() => new NotificationPageView(controller);
}
