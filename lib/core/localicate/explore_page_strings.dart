class ExplorePageStrings {
  static ExplorePageStrings _instace;
  static ExplorePageStrings get instance {
    if (_instace != null) return _instace;
    _instace = ExplorePageStrings._init();
    return _instace;
  }

  ExplorePageStrings._init();

  final String title = 'Trends for you';
  final String listTileTitle = 'Trending in Turkey';
  final List<String> trendTopics = ['#GSvTS','#DolarTL','Erdoğan','#GüleGüle','Borsa İstanbul'];
  final List<String> tweetCount = ['14.7K','12.4K','118K','27.6K','22.1K'];
  final String tweets = 'Tweets';
  final String showMore = 'Show more';
}
