import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sizer/sizer.dart';

class PopupWidget {}

Future openDialog(
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
                    image: AssetImage("assets/avatar (4).png"),
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
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Container(
                    child: Row(
                      children: [
                        Icon(
                          Icons.work,
                          color: Colors.white,
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
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.account_balance,
                      color: Colors.white,
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
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: Row(
                  children: [
                    Icon(
                      Icons.auto_awesome,
                      color: Colors.white,
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
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.white,
                      size: 32,
                    ),
                    Container(
                      constraints:
                          BoxConstraints(maxWidth: 200, maxHeight: 50.h),
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
            ],
          ),
        ),
      ),
    );
