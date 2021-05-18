import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../views/screen_one_widget.dart';
import '../views/screen_two_widget.dart';
import '../views/screen_three_widget.dart';
import '../views/screen_four_widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  //int _currentIndex = 0;
  final List<Widget> _children = [
    ScreenOne(),
    ScreenTwo(),
    ScreenThree(),
    ScreenFour(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        child: _children[_page],
        switchInCurve: Curves.ease,
        switchOutCurve: Curves.ease,
        duration: Duration(milliseconds: 500),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        animationDuration: Duration(milliseconds: 300),
        color: Color(0xff7209b7),
        backgroundColor: Color(0xfff4f1de),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        // currentIndex: _currentIndex,
        items: <Widget>[
          Icon(Icons.add, size: 30, color: Colors.white),
          Icon(Icons.list, size: 30, color: Colors.white),
          Icon(Icons.compare_arrows, size: 30, color: Colors.white),
          Icon(Icons.settings, size: 30, color: Colors.white),
        ],
      ),
    );
  }

  // void onTabTapped(int index) {
  //   setState(() {
  //     _currentIndex = index;
  //   });
  // }
}
