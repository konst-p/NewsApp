import 'package:flutter/cupertino.dart';
import '../screens/screens.dart';
import 'package:flutter/material.dart';

class TabBar extends StatefulWidget {
  TabBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    NewsScreen(),
    FourthScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.news, color: Colors.black)),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home, color: Colors.black)),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home, color: Colors.black)),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home, color: Colors.black)),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home, color: Colors.black)),
        ]),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(builder: (context) {
                return CupertinoPageScaffold(child: NewsScreen());
              });
              break;
            case 1:
              return FirstScreen();
              break;
            case 2:
              return SecondScreen();
              break;
            case 3:
              return ThirdScreen();
              break;
            case 4:
              return FourthScreen();
              break;
            default:
              return NewsScreen();
              break;
          }
        });
  }
}
