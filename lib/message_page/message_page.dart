import 'package:flutter/material.dart';
import 'package:twitter_clone/message_page/message_page_view.dart';

class MessagePage extends StatefulWidget {

  final ScrollController controller;

  const MessagePage({Key? key, required this.controller}) : super(key: key);

  @override
  MessagePageView createState() => new MessagePageView(controller:controller);
}