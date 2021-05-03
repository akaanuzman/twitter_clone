class TabBarStrings {
  static TabBarStrings _instace;
  static TabBarStrings get instance {
    if (_instace != null) return _instace;
    _instace = TabBarStrings._init();
    return _instace;
  }

  TabBarStrings._init();

  List<String> appBarTitle = ['Notifications', 'Messages'];
  final String hintText = 'Search Twitter';
}
