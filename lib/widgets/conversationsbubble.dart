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
            Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      "ProfileName",
                      style: TextStyle(
                        fontSize: 24,
                      ),
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
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
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
                ),
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
            Container(
              alignment: Alignment.centerRight,
              width: 10.w,
              height: 10.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: AppColors.iconLight),
            ),
          ],
        ),
      ),
    );
  }
}
