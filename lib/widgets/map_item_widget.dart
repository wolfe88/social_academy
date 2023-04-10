import 'package:flutter/material.dart';
import 'custom_image_view.dart';
import 'dart:math';

List<String> AvatarListRandom() {
  List<String> avatarList = [];
  for (int i = 1; i <= 85; i++) {
    avatarList.add("assets/avatar ($i)");
  }
  return avatarList;
}

class MapItemWidget extends StatelessWidget {
  List names = [
    "Dilara",
    "Fatma",
    "Çağatay",
    "Ahmet",
    "Mehmet",
    "Ela",
    "Melisa",
    "Berk",
    "Ekin",
  ];
  final imageList = AvatarListRandom();
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(
            right: 24,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: imageList[random.nextInt(85)] + ".png",
                height: 48,
                width: 48,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 8,
                ),
                child: Text(
                  names[random.nextInt(9)],
                  style: TextStyle(fontSize: 12, color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
