import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromARGB(255, 51, 170, 140),
          appBar: AppBar(
            title: Text('I am poor'),
            backgroundColor: Color.fromARGB(255, 39, 96, 104),
          ),
          body: Center(
            child: Image(
              image: AssetImage('assets/images/icons8-carvão-96.png'),
            ),
          ))));
}
