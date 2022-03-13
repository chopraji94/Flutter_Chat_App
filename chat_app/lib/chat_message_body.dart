import 'package:flutter/material.dart';

String userName = "Pranav Chopra";

class MessagePage extends StatelessWidget {
  final String text;

  MessagePage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            margin: const EdgeInsets.only(right: 10.0),
            child: new CircleAvatar(child: new Text(userName[0])),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                userName,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: new Text(text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
