import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:social_academy/constants/routes.dart';

class ConversationsPage extends StatelessWidget {
  const ConversationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: GFButton(
        onPressed: () {
          Navigator.of(context).pushNamed(chatRoute);
        },
        child: Text("ConversationsPage"),
      ),
    );
  }
}
