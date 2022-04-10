import 'package:flutter/material.dart';
import './query.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var clubs = ["Barca", "Madrid", "Milan", "Juve", "PSG"];
    return MaterialApp(
      title: 'Lists Assignment 1',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Lists Assignment 1',clubs: clubs),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title, required this.clubs}) : super(key: key);
  final String title;
  final List<String> clubs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Query(clubs)
          ],
        ),
      ),
    );
  }
}
