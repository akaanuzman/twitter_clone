import 'package:flutter/material.dart';

class CircleAvatarForStory extends StatelessWidget {
  final String url;

  const CircleAvatarForStory({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return _buildCircleAvatar(height: height, width: width, context: context);
  }

  Container _buildCircleAvatar(
          {required double height,
          required double width,
          required BuildContext context}) =>
      Container(
        height: height,
        width: width / 6,
        decoration: _buildBoxDecoration(context: context),
      );

  BoxDecoration _buildBoxDecoration({required BuildContext context}) =>
      BoxDecoration(
        image: _buildStoryImage,
        shape: BoxShape.circle,
        border: _buildBorder(context: context),
      );

  DecorationImage get _buildStoryImage => DecorationImage(
        image: NetworkImage(url),
      );

  Border _buildBorder({required BuildContext context}) =>
      Border.all(color: Theme.of(context).colorScheme.secondary, width: 3);
}
