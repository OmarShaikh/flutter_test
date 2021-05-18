import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xfff1faee),
        body: Center(
          child: Container(
            // height: 500,
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: <Widget>[
                  FittedBox(
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 200,
                          width: 400,
                          child: Card(
                            color: Color(0xffe76f51),
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 400,
                          child: Card(
                            color: Color(0xffe76f51),
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 400,
                          child: Card(
                            color: Color(0xffe76f51),
                          ),
                        ),
                        Container(
                          height: 200,
                          width: 400,
                          child: Card(
                            color: Color(0xffe76f51),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
