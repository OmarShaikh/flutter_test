import 'package:flutter/material.dart';
import '../placeholder/placeholder_widget.dart';

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

const List<Tab> tabs = <Tab>[
  Tab(text: 'Statistics'),
  Tab(text: 'Content'),
  Tab(text: 'Creators'),
];

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
      backgroundColor: Color(0xfff4f1de),
      appBar: AppBar(
        backgroundColor: Color(0xfff4f1de),
        //  elevation: 0,
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
                          labelStyle: TextStyle(fontSize: 30.0),
                          unselectedLabelStyle: TextStyle(fontSize: 18.0),
                          unselectedLabelColor: Colors.grey,
                          indicatorColor: Colors.red,
                          tabs: tabs,
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
        // @Parth put your widgets here
        children: <Widget>[
          PlaceholderWidget(Colors.blueGrey),
          Center(
            child: Text('It\'s cloudy here'),
          ),
          Center(
            child: Text('It\'s rainy here'),
          ),
          // Center(
          //   child: Text('It\'s cloudy here'),
          // ),
        ],
      ),
    );
  }
}
