class DrawerStrings {
  static DrawerStrings? _instace;
  static DrawerStrings get instance {
    if (_instace != null) return _instace!;
    _instace = DrawerStrings._init();
    return _instace!;
  }

  DrawerStrings._init();

  //* Profile (First Container)
  final String imageUrl = 'https://pbs.twimg.com/profile_images/1373207728773029891/meUZGkmW_400x400.jpg';
  final String nameText = 'kaan';
  final String usernameText = '@akaanuzman';
  final String followingCount = '136';
  final String following = 'Following';
  final String followersCount = '129';
  final String followers = 'Followers';

  //* Events (Second Container)
  final String profile = 'Profile';
  final String lists = 'Lists';
  final String topics = 'Topics';
  final String bookmarks = 'Bookmarks';
  final String moments = 'Moments';

  //* Ads(Thirth Container)
  final String twitterAds = 'Twitter Ads';

  //* Help-Privacy-Settins (Fourth Container)
  final String settingsAndPrivacy = 'Settings and privacy';
  final String helpCenter = 'Help Center';

}
