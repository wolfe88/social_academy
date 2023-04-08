import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:sizer/sizer.dart';
import 'package:social_academy/helpers.dart';
import 'package:social_academy/theme.dart';
import 'package:social_academy/widgets/avatar.dart';

class ConversationsBubble extends StatefulWidget {
  const ConversationsBubble({super.key});

  @override
  State<ConversationsBubble> createState() => _ConversationsBubble();
}

class _ConversationsBubble extends State<ConversationsBubble> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10.h,
      child: GFButton(
        color: AppColors.accent,
        onPressed: () {},
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 8, 4),
                  child: Avatar.medium(url: Helpers.randomPictureUrl()),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  "ProfileName",
                  style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
                ),
              ),
            ),
            Text("deneme")
          ],
        ),
      ),
    );
  }
}
