class StoryUrl {
  static StoryUrl _instace;
  static StoryUrl get instance {
    if (_instace != null) return _instace;
    _instace = StoryUrl._init();
    return _instace;
  }

  StoryUrl._init();


  //* Story url
  final List<String> urls = [
    'https://pbs.twimg.com/profile_images/1326222748868284416/yNv8XcqH_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1351819006244773889/0ZytYjFZ_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1326270035338399746/50buDmf-_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1345293630580391936/hwQ404Oq_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1362900902877798404/kkkyCCYP_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1374777583292796935/JuZw2e76_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1304408457047617541/Zg-dd3tb_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1051903063810854912/LTBKnIC5_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1365380075936493569/xtay2tJr_400x400.jpg',
    'https://pbs.twimg.com/profile_images/1376836678472638465/-lQ5OK4Q_400x400.jpg'
  ];
}
