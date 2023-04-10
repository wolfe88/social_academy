import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sizer/sizer.dart';
import 'package:social_academy/widgets/popup_widget.dart';
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
import 'package:social_academy/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../widgets/avatar.dart';
import '../widgets/custom_image_view.dart';
import '../widgets/events_item_widget.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 16,
            top: 16,
            right: 16,
            bottom: 56,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Yaklaşan Etkinlikler",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 30),
                          ),
                          Container(
                            width: double.maxFinite,
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 8,
                              ),
                              padding: EdgeInsets.only(
                                left: 8,
                                top: 6,
                                right: 8,
                                bottom: 6,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset("assets/event.png")),
                                    margin: EdgeInsets.only(
                                      top: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 4,
                                      right: 6,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  "AppJam",
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(
                                                  Icons.location_on,
                                                  size: 30,
                                                ),
                                                Text("Ankara, Nisan 8 - 22:00")
                                              ],
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.add_circle_outline_rounded,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Divider(
                  color: Colors.teal.shade200,
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 8, top: 16, right: 8, bottom: 6),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Topluluk Buluşmaları",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 30),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/bulusma.png')),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/bulusma1.png')),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Text(
                                'Ankara Buluşması',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: Text(
                                'Eskişehir Kod',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/bulusma2.png')),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset('assets/bulusma3.png')),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Text(
                                'Mentor Buluşması Ankara',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SizedBox(width: 30),
                            Expanded(
                              child: Text(
                                'İstanbul Topluluk Buluşması',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
