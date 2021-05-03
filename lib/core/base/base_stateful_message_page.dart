import 'package:flutter/material.dart';
import 'package:twitter_clone/core/localicate/pages_string.dart';
import 'package:twitter_clone/message_page/message_page.dart';

abstract class BaseStatefulMessagePage<T extends StatefulWidget> extends State<MessagePage>{
  PagesString get notificationPageString => PagesString.instance;
}