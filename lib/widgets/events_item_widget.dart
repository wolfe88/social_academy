import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:social_academy/constants/routes.dart';
import 'package:social_academy/helpers.dart';
import 'package:social_academy/pages/map_page.dart';
import 'package:social_academy/pages/events_page.dart';
import 'package:social_academy/pages/home_page.dart';
import 'package:social_academy/pages/conversations_page.dart';
import 'package:social_academy/pages/profile_page.dart';
import 'package:social_academy/theme.dart';
import 'package:social_academy/widgets/custom_image_view.dart';
import 'package:social_academy/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/avatar.dart';

// ignore: must_be_immutable
class EventsItemWidget extends StatelessWidget {
  EventsItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: 177,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
              imagePath: ("assets/map.png"),
              height: 108,
              width: 161,
              radius: BorderRadius.circular(
                8,
              ),
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(
                top: 8,
              )),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.only(
                left: 8,
                top: 4,
                right: 8,
                bottom: 4,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ("assets/map.png"),
                    height: 20,
                    width: 20,
                    margin: EdgeInsets.only(
                      top: 117,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 116,
                      bottom: 1,
                    ),
                    child: Text(
                      "Ankara",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
