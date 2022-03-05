import 'package:chat_app/chat_app_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MyChatApp',
      home: ChatApp(),
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.light,
        accentColor: Colors.amber
      ),
    );
  }
}
