import 'package:flutter/material.dart';
import 'package:twitter_clone/core/localicate/circle_avatar_for_story_url.dart';
import 'package:twitter_clone/core/localicate/listview_tweet.dart';
import 'package:twitter_clone/core/padding/padding.dart';

final TextStyle boldText = TextStyle(fontWeight: FontWeight.bold);
Tweet get tweet => Tweet.instance;

class PostListTile extends StatelessWidget {
  ApplyPadding get applyPadding => ApplyPadding.instance;
  BorderRadius get borderRadiusCircularTwenty =>
      BorderRadius.all(Radius.circular(20));

  final int index;
  final StoryUrl storyUrl;

  const PostListTile({Key? key, required this.index, required this.storyUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle captionText =
        Theme.of(context).textTheme.caption!.copyWith(fontSize: 16);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return _buildPost(
        context: context, height: height, width: width, style: captionText);
  }

  ListTile _buildPost(
          {required BuildContext context,
          required double height,
          required double width,
          required TextStyle style}) =>
      ListTile(
        leading: _buildTweetProfilePhoto,
        title: _buildPostTitleContentImage(
            context: context, height: height, width: width, style: style),
      );

  CircleAvatar get _buildTweetProfilePhoto => CircleAvatar(
        backgroundImage: NetworkImage(storyUrl.urls[index]),
      );

  Wrap _buildPostTitleContentImage(
          {required BuildContext context,
          required double height,
          required double width,
          required TextStyle style}) =>
      Wrap(
        direction: Axis.vertical,
        children: [
          _buildTweetTitle(context: context, style: style),
          _buildTweetContent(context: context),
          SizedBox(height: 5),
          _buildPostmageContainer(height: height, width: width),
          _buildActionsRow(context: context)
        ],
      );

  Wrap _buildTweetTitle(
          {required BuildContext context, required TextStyle style}) =>
      Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        spacing: 2,
        children: [
          Text(tweet.tweetTitle[index], style: boldText.copyWith(fontSize: 18)),
          Text(tweet.userName[index], style: style),
          Text(tweet.sign, style: style),
          Text(tweet.time[index], style: style)
        ],
      );

  Text _buildTweetContent({required BuildContext context}) => Text(
        tweet.tweetContent[index],
        style: Theme.of(context).textTheme.bodyText2,
      );

  Container _buildPostmageContainer(
          {required double height, required double width}) =>
      Container(
        height: height / 2,
        width: width / 1.3,
        decoration: _buildPostImage,
      );

  BoxDecoration get _buildPostImage => BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(tweet.images[index]),
        fit: BoxFit.cover,
      ),
      borderRadius: borderRadiusCircularTwenty);

  Row _buildActionsRow({required BuildContext context}) => Row(
        children: [
          _buildTweetIconLabel(
              count: tweet.commentCount[index],
              icon: Icons.comment_outlined,
              context: context),
          _buildTweetIconLabel(
              count: tweet.retweetCount[index],
              icon: Icons.repeat_sharp,
              context: context),
          _buildTweetIconLabel(
              count: tweet.favCount[index],
              icon: Icons.favorite_border,
              context: context),
          _buildIcon(
              icon: Icons.bookmark_border,
              color: Theme.of(context).colorScheme.onSecondary)
        ],
      );

  Widget _buildTweetIconLabel(
      {required int count,
      required IconData icon,
      required BuildContext context}) {
    return Padding(
      padding: applyPadding.paddingAllSixteen,
      child: InkWell(
        child: Wrap(
          spacing: 2,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            Icon(
              icon,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        ),
        onTap: () {},
      ),
    );
  }

  Icon _buildIcon({required IconData icon, required Color color}) => Icon(
        icon,
        color: color,
      );
}
