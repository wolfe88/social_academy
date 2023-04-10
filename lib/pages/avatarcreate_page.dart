import 'dart:convert';
import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:developer';
import 'package:random_avatar/random_avatar.dart';
import 'package:sizer/sizer.dart';
import 'package:social_academy/widgets/custom_image_view.dart';
import 'package:social_academy/widgets/map_item_widget.dart';
import 'package:path_provider/path_provider.dart';

class AvatarCreatePage extends StatefulWidget {
  AvatarCreatePage({super.key});

  final String title = "a";
  var iconpath = "assets/avatar (25).png";

  @override
  State<AvatarCreatePage> createState() => _AvatarCreatePageState();
}

class _AvatarCreatePageState extends State<AvatarCreatePage> {
  String? _content;

  // Find the Documents path
  Future<String> _getDirPath() async {
    final dir = await getApplicationDocumentsDirectory();

    return dir.path;
  }

  // This function is triggered when the "Read" button is pressed
  Future<String> _read() async {
    String text = "";
    try {
      final Directory directory = await getApplicationDocumentsDirectory();
      final File file = File('${directory.path}/my_file.txt');
      text = await file.readAsString();
    } catch (e) {
      print("Couldn't read file");
    }
    return text;
  }

  _write(String text) async {
    final Directory directory = await getApplicationDocumentsDirectory();
    final File file = File('${directory.path}/my_file.txt');
    await file.writeAsString(text);
  }

  void dnm() async {
    final readedText = await _read();
  }

  @override
  initState() {
    dnm();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          CustomImageView(
            margin: EdgeInsets.only(top: 5.h),
            height: 40.h,
            width: 40.h,
            imagePath: widget.iconpath,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(top: 5.h),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(color: Colors.black))),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5, // number of columns
                    childAspectRatio: 1, // aspect ratio of each image
                  ),
                  itemCount: AvatarListRandom().length,
                  itemBuilder: (context, index) {
                    return IconButton(
                      onPressed: (() {
                        widget.iconpath = "${AvatarListRandom()[index]}.png";
                        setState(() {});
                      }),
                      icon: Image.asset(
                        "${AvatarListRandom()[index]}.png",
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
