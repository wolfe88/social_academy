import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:social_academy/theme.dart';
import 'package:social_academy/widgets/popup_widget.dart';

import '../pages/home_page.dart';
import 'custom_image_view.dart';

class Profiledraverwidget extends StatefulWidget {
  Profiledraverwidget({
    Key? key,
    required this.userNameText,
    required this.workText,
    required this.eduText,
    required this.skillsText,
    required this.infoText,
    required this.avatarindex,
  }) : super(key: key);

  String userNameText;
  String workText;
  String eduText;
  String skillsText;
  String infoText;
  int avatarindex;

  @override
  State<Profiledraverwidget> createState() => _ProfiledraverwidgetState();
}

class _ProfiledraverwidgetState extends State<Profiledraverwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cardLight,
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: ExpansionTile(
          backgroundColor: AppColors.textLigth,
          leading: CustomImageView(
            radius: BorderRadius.circular(15),
            imagePath: "${imageList[widget.avatarindex]}.png",
            height: 48,
            width: 48,
          ),

          title: Text(
            widget.userNameText,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: AppColors.textDark,
            ),
          ), // Text
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 32.0),
                              child: Icon(Icons.work, color: Colors.redAccent),
                            ),
                            Text(widget.workText, textAlign: TextAlign.left),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 32.0),
                              child: Icon(Icons.account_balance,
                                  color: Colors.blue),
                            ),
                            Text(widget.eduText, textAlign: TextAlign.left),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 32.0),
                              child: Icon(Icons.auto_awesome,
                                  color: Colors.orange),
                            ),
                            Text(widget.skillsText, textAlign: TextAlign.left),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: IconButton(
                            onPressed: () {
                              openDialog(
                                  widget.avatarindex,
                                  widget.userNameText,
                                  widget.workText,
                                  widget.eduText,
                                  widget.skillsText,
                                  widget.infoText,
                                  context);
                            },
                            icon: Icon(Icons.info),
                            color: Colors.lime),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
