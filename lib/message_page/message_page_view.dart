
import 'package:twitter_clone/core/compenents/message/list_view_builder.dart';
import 'package:twitter_clone/message_page/message_page_view_model.dart';
import 'package:flutter/material.dart';

class MessagePageView extends MessagePageViewModel {
  final ScrollController controller;

  MessagePageView({@required this.controller});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MessagePageListViewBuilder(controller: controller,)
    );
  }
}
