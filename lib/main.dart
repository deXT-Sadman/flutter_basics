import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.cyanAccent,
          child: Center(child: Text("Sadman")),
        ),
      ),
    );
  }
}
