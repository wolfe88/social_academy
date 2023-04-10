import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sizer/sizer.dart';
import 'package:social_academy/pages/home_page.dart';
import 'package:social_academy/theme.dart';

class PopupWidget {}

Future openDialog(
  int avatarindex,
  String userNameText,
  String workText,
  String eduText,
  String skillsText,
  String infoText,
  BuildContext context,
) =>
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Container(
          width: 80.w,
          height: 80.h,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image(
                    image: AssetImage(imageList[avatarindex] + ".png"),
                    height: 10.h,
                    width: 10.h,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    userNameText,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16, left: 0),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.work,
                          color: Colors.redAccent,
                          size: 32,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(workText),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_balance,
                      color: Colors.blue,
                      size: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(eduText),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.auto_awesome,
                      color: Colors.orange,
                      size: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(skillsText),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.lime,
                      size: 32,
                    ),
                    Container(
                      constraints:
                          BoxConstraints(maxWidth: 200, maxHeight: 35.h),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: SingleChildScrollView(
                          child: Text(infoText),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    color: Colors.blue,
                    icon: Icon(
                      size: 40,
                      Icons.add_box,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    color: Colors.blue,
                    icon: Icon(
                      size: 40,
                      Icons.mail,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
