import 'package:flutter/material.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:social_academy/constants/routes.dart';

class ConversationsPage extends StatefulWidget {
  const ConversationsPage({Key? key}) : super(key: key);

  @override
  State<ConversationsPage> createState() => _ConversationsPageState();
}

class _ConversationsPageState extends State<ConversationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('In Progress')),
      ),
      body: Center(
        child: Container(
            child: GFButton(
          onPressed: () {
            Navigator.of(context).pushNamed(chatRoute);
          },
          child: Text("ConversationBubble"),
        )),
      ),
    );
  }
}
