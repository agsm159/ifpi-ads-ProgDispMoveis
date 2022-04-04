// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:list_album/album.dart';
import 'package:list_album/api.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(
        title: 'Albums List',
         
      ),
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
  var albums = [];

  _getAlbums() {
    API.getAlbums().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        albums = list.map((model) => Album.fromJson(model)).toList();
      });
    });
  }

  _MyHomePageState() {
    _getAlbums();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: listaAlbums(),
    );
  }

  listaAlbums() {
    return ListView.builder(

        itemBuilder: (context, index) {
          int id = albums[index].id;
          String texto = "Album de numero $id clicado";

          return ListTile(
            title: Text(
              albums[index].title,
              style: TextStyle(
                fontSize: 15.0, 
                color: Colors.black
              ),
            ),
            
            onTap: () {
              final snackBar = SnackBar(
                content: Text(texto),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          );
        });
  }
}
