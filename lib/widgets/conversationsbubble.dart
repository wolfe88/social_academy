import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:sizer/sizer.dart';
import 'package:social_academy/helpers.dart';
import 'package:social_academy/theme.dart';
import 'package:social_academy/widgets/avatar.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ConversationsBubble extends StatefulWidget {
  const ConversationsBubble({super.key});

  @override
  State<ConversationsBubble> createState() => _ConversationsBubble();
}

class _ConversationsBubble extends State<ConversationsBubble> {
  late List<types.Message> _messages = [];
  get lastMassageAuthorName => _messages.last.author.firstName;
  final _user = const types.User(id: '82091008-a484-4a89-ae75-a22bf8d6f3ac');

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 12.h,
        child: GFButton(
          color: AppColors.accent,
          onPressed: () {},
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Avatar.medium(url: Helpers.randomPictureUrl()),
                  ),
                ],
              ),
<<<<<<< HEAD
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      text: '$lastMassageAuthorName\n',
                      style: TextStyle(
                        fontSize: 24,
                        height: 1.3,
                        fontWeight: FontWeight.w500,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Naber kanka?',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.normal),
                        ),
                      ],
=======
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    text: 'Selin\n',
                    style: TextStyle(
                      fontSize: 24,
                      height: 1.3,
                      fontWeight: FontWeight.w500,
>>>>>>> 4fb965f9f189a6766625bfc95471b70ec98bcf22
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Naber kanka?',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ]),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 50, 0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    "LastMassage",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _loadMessages() async {
    final response = await rootBundle.loadString('assets/messages.json');
    final messages = (jsonDecode(response) as List)
        .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
        .toList();

    setState(() {
      _messages = messages;
    });
  }
}
