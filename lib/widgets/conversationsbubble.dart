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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 12.h,
        child: GFButton(
          borderSide: BorderSide(width: 1),
          color: AppColors.secondary,
          onPressed: () {},
          child: Wrap(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Avatar.medium(url: Helpers.randomPictureUrl()),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                        text: 'Selin\n',
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 6),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "1:18 PM",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Container()
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
