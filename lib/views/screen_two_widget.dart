import 'dart:html';

import 'package:flutter/material.dart';
import 'screen_three_widget.dart';

/// This is the main application widget.
class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: new PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: ListView(
              shrinkWrap: false,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Text('Starbucks'),
                    ),
                    Expanded(
                      flex: 5,
                      child: Material(
                        color: Colors.white,
                        child: TabBar(
                          controller: _tabController,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(child: Text('Page 1')),
                            Tab(child: Text('Page 2')),
                            Tab(child: Text('Page 3')),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Icon(Icons.logout_rounded),
                    )
                  ],
                )
              ],
            )),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Text('It\'s cloudy here'),
          ),
          Center(
            child: Text('It\'s rainy here'),
          ),
          ScreenThree(),
        ],
      ),
    );
  }
}
