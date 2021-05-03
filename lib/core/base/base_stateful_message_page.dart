import 'package:flutter/material.dart';
import '../localicate/pages_string.dart';
import '../../message_page/message_page.dart';

abstract class BaseStatefulMessagePage<T extends StatefulWidget> extends State<MessagePage>{
  PagesString get notificationPageString => PagesString.instance;
}