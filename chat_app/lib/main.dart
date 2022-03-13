import 'package:chat_app/chat_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatApp(),
      theme: new ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.light
      ),
    );
  }
}
