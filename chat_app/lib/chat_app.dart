import 'package:chat_app/chat_app_body.dart';
import 'package:flutter/material.dart';

class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Frenzy chat app"),
      ),
      body: new ChatAppBody(),
    );
  }
}