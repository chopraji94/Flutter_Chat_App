import 'package:flutter/material.dart';

const String _userName = "Pranav";

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
            margin: new EdgeInsets.only(right: 10.0),
            child: new CircleAvatar(child: Text(_userName[0])),
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                _userName,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              new Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text(text),
              ),
            ],
          )
        ],
      ),
    );
  }
}
