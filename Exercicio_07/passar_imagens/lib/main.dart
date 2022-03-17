// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Passar Imagens'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;

  void _incrementCounter() {
    setState(() {
      if(_counter < 5){
      _counter++;
      }
    });
  }

  void decremenetCounter() {
    setState(() {
      if( _counter > 1) {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('images/ssj$_counter.png'),
              width: 400,
              height: 400, 
            ),
          ],
        ),
        ),
      floatingActionButton: Row(

        mainAxisAlignment: MainAxisAlignment.center,
        
        children: <Widget>[
          FloatingActionButton(
            onPressed: decremenetCounter,
            child: Icon(Icons.arrow_left_outlined),

          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: _incrementCounter,
            child: Icon(Icons.arrow_right_outlined),
          ),
        ],
      ),
    );

  }
}