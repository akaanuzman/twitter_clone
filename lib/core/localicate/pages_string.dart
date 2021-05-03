class PagesString {
  static PagesString? _instace;
  static PagesString get instance {
    if (_instace != null) return _instace!;
    _instace = PagesString._init();
    return _instace!;
  }

  PagesString._init();

  final List<String> tabBarTitle = ['All', 'Mentions'];
  final String url =
      'https://abs.twimg.com/sticky/default_profile_images/default_profile_400x400.png';
  final String username = 'username';
  final String nickName = '@username';
  final String myNickName = '@akaanuzman';
  final String sign = '•';
  final String date = '1h';
  final String followedText = ' and 3 others followed you';
  final String replyingTo = 'Replying to';
  final String mentionContent = 'There are many variations of passages of Lorem\n' 
  'Ipsum available, but the majority have suffered\n'
  'alteration in some form, by injected';
  final String messageContent = "You sent @username2's Tweet";
}
