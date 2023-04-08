import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:social_academy/constants/routes.dart';
import 'package:social_academy/widgets/conversationsbubble.dart';

class ConversationsPage extends StatefulWidget {
  const ConversationsPage({super.key});

  @override
  State<ConversationsPage> createState() => _ConversationsPageState();
}

class _ConversationsPageState extends State<ConversationsPage> {
  @override
  Widget build(BuildContext context) {
    return ConversationsBubble();
    // return GFButton(
    //   onPressed: () {
    //     Navigator.of(context).pushNamed(chatRoute);
    //   },
    //   child: Text("ConversationsPage"),
    // );
  }
}
