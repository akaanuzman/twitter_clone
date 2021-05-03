import 'package:flutter/material.dart';
import 'package:twitter_clone/core/compenents/drawer/drawer.dart';
import 'package:twitter_clone/core/localicate/pages_string.dart';

class MessagePageListTile extends StatelessWidget {
  PagesString get notificationPageString => PagesString.instance;

  @override
  Widget build(BuildContext context) {
    return _buildListTile(context: context);
  }

  ListTile _buildListTile({required BuildContext context}) => ListTile(
      leading: _buildCircleAvatar,
      title: _buildTitle,
      subtitle: _buildText(
          data: notificationPageString.messageContent,
          style: Theme.of(context).textTheme.subtitle1!));

  CircleAvatar get _buildCircleAvatar => CircleAvatar(
        backgroundImage: NetworkImage(notificationPageString.url),
      );

  Row get _buildTitle => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildUsernameWrap,
          Text(notificationPageString.date)
        ],
      );

  Wrap get _buildUsernameWrap => Wrap(
        spacing: 3,
        children: [
          _buildText(data: notificationPageString.username, style: boldText),
          Text(notificationPageString.nickName)
        ],
      );

  Text _buildText({required String data,required TextStyle style}) =>
      Text(data, style: style);
}
