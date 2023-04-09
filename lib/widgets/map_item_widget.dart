import 'package:flutter/material.dart';
import 'custom_image_view.dart';
import 'dart:math';

List<String> AvatarListRandom() {
  List<String> avatarList = [];
  for (int i = 1; i <= 15; i++) {
    avatarList.add("assets/avatar $i");
  }
  return avatarList;
}

class MapItemWidget extends StatelessWidget {
  MapItemWidget();

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
                imagePath: imageList[random.nextInt(15)] + ".png",
                height: 48,
                width: 48,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 8,
                ),
                child: Text(
                  "Lorem",
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
