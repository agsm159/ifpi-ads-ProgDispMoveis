import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 67, 53, 53),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/'-'.jpg"),
              ),
              Text(
                'Antônio Gabriel',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 40,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                  color: Colors.teal.shade300,
                  fontSize: 20,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Color.fromARGB(255, 161, 141, 141),
                ),
              ),
              buildCard('+ 55 86 91234-5678', Icons.phone),
              buildCard('catec.2020111tads0450@aluno.ifpi.edu.br', Icons.email),
            ],
          ),
        ),
      ),
    ),
  );
}

Card buildCard(String text, IconData icon) {
  return Card(
    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
    child: ListTile(
      leading: Icon(
        icon,
        color: Colors.teal,
      ),
      title: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: Colors.teal.shade900,
        ),
      ),
    ),
  );
}
