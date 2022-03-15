import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 220, 210, 210),
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 250,
                  width: 150,
                  color: Color.fromRGBO(33, 150, 243, 1),
                  child: Icon(
                    Icons.android,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 100,
                  color: Color.fromRGBO(33, 150, 243, 1),
                  child: Icon(
                    Icons.flutter_dash,
                    size: 100,
                    color: Colors.white,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
