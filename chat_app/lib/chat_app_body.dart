import 'package:chat_app/chat_message_body.dart';
import 'package:flutter/material.dart';

class ChatAppBody extends StatefulWidget {
  @override
  State<ChatAppBody> createState() => _ChatAppBodyState();
}

class _ChatAppBodyState extends State<ChatAppBody> {
  TextEditingController messageFieldController = new TextEditingController();
  List<MessagePage> _messageList = <MessagePage>[];

  void _buttonFunction(String fieldText) {
    messageFieldController.text = "";
    if(fieldText.isNotEmpty){
      MessagePage message = new MessagePage(text: fieldText);
      setState(() {
        _messageList.insert(0,message);
      });
    }
  }

  Widget _textComposerWidget() {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Row(
        children: <Widget>[
          new Flexible(
              child: new TextField(
            decoration:
                new InputDecoration.collapsed(hintText: "Enter the message"),
            controller: messageFieldController,
          )),
          new Container(
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: new IconButton(
                onPressed: () => _buttonFunction(messageFieldController.text), icon: new Icon(Icons.send)),
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
            reverse: true,
            itemBuilder: (_,int index) => _messageList[index],
            padding: const EdgeInsets.all(8.0),
            itemCount: _messageList.length,
            scrollDirection: Axis.vertical,
          )
        ),
        new Divider(height: 2.0),
        new Container(
          child: _textComposerWidget(),
          decoration: new BoxDecoration(color: Theme.of(context).cardColor),
        )
      ],
    );
  }
}
