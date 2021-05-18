import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ScreenFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff1faee),
        body: Center(
          child: Container(
            height: 1000,
            child: Align(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      // height: 200,
                      width: 1400,
                      child: ResponsiveGridRow(children: [
                        ResponsiveGridCol(
                          lg: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              height: 200,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff81b29a),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    offset: new Offset(0, 3.0),
                                    blurRadius: 7.0,
                                    spreadRadius: 3.0,
                                  )
                                ],
                              ),
                              child: Text('Card 1',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          lg: 6,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              height: 200,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff81b29a),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    offset: new Offset(0, 3.0),
                                    blurRadius: 7.0,
                                    spreadRadius: 3.0,
                                  )
                                ],
                              ),
                              child: Text('Card 2',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          xs: 6,
                          md: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xfff9c74f),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    offset: new Offset(0, 3.0),
                                    blurRadius: 7.0,
                                    spreadRadius: 3.0,
                                  )
                                ],
                              ),
                              child: Text("Card 3",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          xs: 6,
                          md: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff90be6d),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    offset: new Offset(0, 3.0),
                                    blurRadius: 7.0,
                                    spreadRadius: 3.0,
                                  )
                                ],
                              ),
                              child: Text("Card 4",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          xs: 6,
                          md: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xfff94144),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    offset: new Offset(0, 3.0),
                                    blurRadius: 7.0,
                                    spreadRadius: 3.0,
                                  )
                                ],
                              ),
                              child: Text(
                                "Card 5",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          xs: 6,
                          md: 3,
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff98c1d9),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    offset: new Offset(0, 3.0),
                                    blurRadius: 7.0,
                                    spreadRadius: 3.0,
                                  )
                                ],
                              ),
                              child: Text(
                                "Card 6",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        ResponsiveGridCol(
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              height: 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xffaed9e0),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    offset: new Offset(0, 3.0),
                                    blurRadius: 7.0,
                                    spreadRadius: 3.0,
                                  )
                                ],
                              ),
                              child: Text(
                                "Card 6",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    )
                  ],
                  // child: ListView(
                  //   scrollDirection: Axis.horizontal,
                  //   // crossAxisCount: 4,
                  //   children: <Widget>[
                  //     Container(
                  //       height: 50,
                  //       width: 400,
                  //       child: Card(
                  //         color: Colors.cyan,
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 50,
                  //       width: 400,
                  //       child: Card(
                  //         color: Colors.cyan,
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 50,
                  //       width: 400,
                  //       child: Card(
                  //         color: Colors.cyan,
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 50,
                  //       width: 400,
                  //       child: Card(
                  //         color: Colors.cyan,
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 50,
                  //       width: 400,
                  //       child: Card(
                  //         color: Colors.cyan,
                  //       ),
                  //     ),
                  //     Container(
                  //       height: 50,
                  //       width: 400,
                  //       child: Card(
                  //         color: Colors.cyan,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
