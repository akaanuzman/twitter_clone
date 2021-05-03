import 'package:flutter/material.dart';
import 'package:twitter_clone/core/compenents/drawer/drawer.dart';
import 'package:twitter_clone/core/localicate/tabbar_strings.dart';
import 'package:twitter_clone/notification_page/notification_page.dart';
import 'package:twitter_clone/explore_page/explore_page.dart';
import 'package:twitter_clone/home_page/home_page.dart';
import 'package:twitter_clone/message_page/message_page.dart';

class TweeterTabbarView extends StatefulWidget {
  @override
  _TweeterTabbarViewState createState() => _TweeterTabbarViewState();
}

class _TweeterTabbarViewState extends State<TweeterTabbarView>
    with SingleTickerProviderStateMixin {
  Duration get durationFor500ms => Duration(milliseconds: 500);
  TabBarStrings get tabBarStrings => TabBarStrings.instance;
  ScrollController controller;
  bool openCloseState = false;
  double lastOffset = 0;
  double get appBarHeight => openCloseState ? 0 : 65;
  TabController tabController;
  int currentIndex = 0;


  @override
  void initState() {
    controller = ScrollController();
    super.initState();

    _controllerListener();

    tabController = TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    controller.dispose();
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: _buildBody,
        bottomNavigationBar: _buildBottomAppBar(context: context),
        floatingActionButton: _buildFloatingActionButton(context: context),
        drawer: BuildDrawer(),
      ),
    );
  }

  Column get _buildBody => Column(
        children: [
          _buildAnimatedAppBar,
          Expanded(
            child: _buildTabBarView,
          ),
        ],
      );

  AnimatedContainer get _buildAnimatedAppBar => AnimatedContainer(
        duration: durationFor500ms,
        height: appBarHeight,
        child: _buildAppBar,
      );

  AppBar get _buildAppBar => AppBar(
        title: _buildDynamicTitle,
        actions: [_buildDynamicActions, SizedBox(width: 5)],
        centerTitle: _buildDynamicCenterTitle,
      );

  Widget get _buildDynamicTitle => currentIndex == 1
      ? _buildSearchIcon
      : currentIndex == 2
          ? Text(
              tabBarStrings.appBarTitle[0],
              style: TextStyle(color: Theme.of(context).colorScheme.surface),
            )
          : currentIndex == 3
              ? Text(
                  tabBarStrings.appBarTitle[1],
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.surface),
                )
              : Icon(Icons.adb);

  Container get _buildSearchIcon => Container(
        height: 40.5,
        child: _buildTextFormField,
      );

  TextFormField get _buildTextFormField => TextFormField(
        maxLines: 1,
        decoration: _buildInputDecoration,
      );

  InputDecoration get _buildInputDecoration => InputDecoration(
        hintText: tabBarStrings.hintText,
        prefixIcon: Icon(Icons.search),
        filled: true,
        border: _buildHoverBorder,
        enabledBorder: _buildEnabledBorder,
      );

  OutlineInputBorder get _buildHoverBorder => OutlineInputBorder(
      borderSide: BorderSide(color: Theme.of(context).colorScheme.secondary),
      borderRadius: BorderRadius.circular(20));

  OutlineInputBorder get _buildEnabledBorder => OutlineInputBorder(
      borderSide: BorderSide(color: Theme.of(context).colorScheme.onSecondary),
      borderRadius: BorderRadius.circular(20));

  Widget get _buildDynamicActions =>
      currentIndex == 0 ? Icon(Icons.auto_awesome) : Icon(Icons.settings);

  bool get _buildDynamicCenterTitle => currentIndex == 0 ? true : false;

  TabBarView get _buildTabBarView => TabBarView(
        children: [
          HomePage(
            controller: controller,
          ),
          ExplorePage(
            controller: controller,
          ),
          NotificationPage(
            controller: controller,
          ),
          MessagePage(
            controller: controller,
          ),
        ],
      );

  BottomAppBar _buildBottomAppBar({@required BuildContext context}) =>
      BottomAppBar(
        child: _buildTabBar(context: context),
      );

  TabBar _buildTabBar({@required BuildContext context}) => TabBar(
        unselectedLabelColor: Theme.of(context).colorScheme.onSecondary,
        labelColor: Theme.of(context).colorScheme.secondary,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        tabs: [
          _buildTab(context: context, icon: Icons.home),
          _buildTab(context: context, icon: Icons.search),
          _buildTab(context: context, icon: Icons.notifications_none),
          _buildTab(context: context, icon: Icons.mail_outline_outlined)
        ],
      );

  Tab _buildTab({@required BuildContext context, @required IconData icon}) =>
      Tab(
        child: Icon(
          icon,
        ),
      );

  FloatingActionButton _buildFloatingActionButton(
          {@required BuildContext context}) =>
      FloatingActionButton(
        child: Icon(
          Icons.adb,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        onPressed: () {},
      );

  void _controllerListener() {
    controller.addListener(() {
      if (controller.offset <= 0) {
        openCloseState = false;
      } else if (controller.offset >= controller.position.maxScrollExtent) {
        openCloseState = true;
      } else {
        openCloseState = controller.offset > lastOffset ? true : false;
      }

      setState(() {
        lastOffset = controller.offset;
      });
    });
  }
}
