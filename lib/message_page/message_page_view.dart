
import 'package:flutter/material.dart';

import '../core/compenents/message/list_view_builder.dart';
import 'message_page_view_model.dart';

class MessagePageView extends MessagePageViewModel {
  final ScrollController controller;

  MessagePageView({required this.controller});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MessagePageListViewBuilder(controller: controller,)
    );
  }
}
