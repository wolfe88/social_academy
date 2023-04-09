import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:developer';
import 'package:random_avatar/random_avatar.dart';
import 'package:social_academy/widgets/custom_image_view.dart';
import 'package:social_academy/widgets/map_item_widget.dart';

class AvatarCreatePage extends StatefulWidget {
  AvatarCreatePage({super.key});

  final String title = "a";

  @override
  State<AvatarCreatePage> createState() => _AvatarCreatePageState();
}

class _AvatarCreatePageState extends State<AvatarCreatePage> {
  final TextEditingController _controller = TextEditingController();
  final List<Widget> _painters = <Widget>[];
  @override
  Widget build(BuildContext context) {
    var assetPaths = [];
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5, // number of columns
          childAspectRatio: 1, // aspect ratio of each image
        ),
        itemCount: AvatarListRandom().length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              "${AvatarListRandom()[index]}.png",
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
