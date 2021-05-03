import 'package:flutter/material.dart';
import 'package:twitter_clone/core/compenents/post/post_list_tile.dart';
import 'package:twitter_clone/core/localicate/pages_string.dart';
import 'package:twitter_clone/core/padding/padding.dart';

class MentionsListTile extends StatelessWidget {
  final int index;

  const MentionsListTile({Key key, @required this.index}) : super(key: key);

  PagesString get notificationPageString => PagesString.instance;

  ApplyPadding get applyPadding => ApplyPadding.instance;

  @override
  Widget build(BuildContext context) {
    final TextStyle subtitle1 = Theme.of(context).textTheme.subtitle1;
    final Color secondary = Theme.of(context).colorScheme.secondary;
    final TextStyle bodyText1 = Theme.of(context)
        .textTheme
        .bodyText1
        .copyWith(fontWeight: FontWeight.w400, fontSize: 16);

    return _buildListTile(
        firstStyle: subtitle1,
        secondStyle: bodyText1,
        color: secondary,
        context: context);
  }

  ListTile _buildListTile(
          {@required TextStyle firstStyle,
          @required TextStyle secondStyle,
          @required Color color,
          @required BuildContext context}) =>
      ListTile(
        leading: _buildLeading,
        title: _buildLastWrap,
        subtitle: _buildSubtitle(
            firstStyle: firstStyle,
            secondStyle: secondStyle,
            color: color,
            context: context),
      );

  CircleAvatar get _buildLeading => CircleAvatar(
        backgroundImage: NetworkImage(notificationPageString.url),
      );

  Wrap get _buildLastWrap => Wrap(
        spacing: 2,
        children: [
          _buildTextStyle(
              data: notificationPageString.username, style: boldText),
          _buildTextStyle(data: notificationPageString.nickName),
          _buildTextStyle(data: notificationPageString.sign),
          _buildTextStyle(data: notificationPageString.date),
        ],
      );

  Wrap _buildSubtitle(
          {@required TextStyle firstStyle,
          @required TextStyle secondStyle,
          @required Color color,
          @required BuildContext context}) =>
      Wrap(
        children: [
          _buildReplyingToContentWrap(
              firstStyle: firstStyle, secondStyle: secondStyle, color: color),
          _buildRowIcon(context: context, style: secondStyle)
        ],
      );

  Wrap _buildReplyingToContentWrap(
          {@required TextStyle firstStyle,
          @required TextStyle secondStyle,
          @required Color color}) =>
      Wrap(
        direction: Axis.vertical,
        children: [
          _buildReplyingToWrap(style: firstStyle, color: color),
          _buildTextStyle(
              data: notificationPageString.mentionContent, style: secondStyle)
        ],
      );

  Wrap _buildReplyingToWrap(
          {@required TextStyle style, @required Color color}) =>
      Wrap(
        spacing: 4,
        children: [
          _buildTextStyle(
              data: notificationPageString.replyingTo, style: style),
          _buildTextStyle(
            data: notificationPageString.myNickName,
            style: style.copyWith(color: color),
          ),
        ],
      );

  Row _buildRowIcon(
          {@required BuildContext context, @required TextStyle style}) =>
      Row(
        children: [
          _buildTweetIconLabel(
              count: tweet.commentCount[index],
              icon: Icons.comment_outlined,
              style: style,
              context: context),
          _buildTweetIconLabel(
              count: tweet.retweetCount[index],
              icon: Icons.repeat_sharp,
              style: style,
              context: context),
          _buildTweetIconLabel(
              count: tweet.favCount[index],
              icon: Icons.favorite_border,
              style: style,
              context: context),
        ],
      );

  Widget _buildTweetIconLabel(
          {@required int count,
          @required IconData icon,
          @required BuildContext context,
          @required TextStyle style}) =>
      Padding(
        padding: applyPadding.paddingLT10R12B,
        child: InkWell(
          child: _buildIconWrap(
              icon: icon, context: context, count: count, style: style),
          onTap: () {},
        ),
      );

  Wrap _buildIconWrap(
          {@required IconData icon,
          @required BuildContext context,
          @required int count,
          @required TextStyle style}) =>
      Wrap(
        spacing: 2,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.onSecondary,
          ),
          _buildTextStyle(
              data: count.toString(), style: style.copyWith(fontSize: 14))
        ],
      );

  Text _buildTextStyle({@required String data, TextStyle style}) => Text(
        data,
        style: style,
      );
}
