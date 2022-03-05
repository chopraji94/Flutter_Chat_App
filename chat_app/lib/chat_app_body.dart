import 'package:chat_app/chat_message.dart';
import 'package:flutter/material.dart';

class ChatAppBody extends StatefulWidget {
  @override
  State<ChatAppBody> createState() => _ChatAppBodyState();
}

class _ChatAppBodyState extends State<ChatAppBody> {
  final TextEditingController _messageField = new TextEditingController();
  final List<MessagePage> _messagesList = <MessagePage>[];

  void _buttonClick(String text) {
    _messageField.clear();
    MessagePage message = new MessagePage(text: text);
    setState(() {
      _messagesList.insert(0, message);
    });
  }

  Widget _textComposerWidget() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(
        children: <Widget>[
          new Flexible(
              child: new TextField(
            decoration:
                new InputDecoration.collapsed(hintText: "Enter a message"),
            controller: _messageField,
          )),
          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: new IconButton(
              onPressed: () => _buttonClick(_messageField.text),
              icon: new Icon(Icons.send),
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Flexible(
          child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_, int index) => _messagesList[index],
            itemCount: _messagesList.length,
          ),
        ),
        new Container(
          child: _textComposerWidget(),
          decoration: new BoxDecoration(color: Theme.of(context).cardColor),
        )
      ],
    );
  }
}
