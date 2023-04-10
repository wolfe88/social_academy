import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:social_academy/widgets/custom_image_view.dart';
import 'package:social_academy/widgets/map_item_widget.dart';

class AvatarCreatePage extends StatefulWidget {
  AvatarCreatePage({super.key});

  var iconpath = "assets/avatar (25).png";

  @override
  State<AvatarCreatePage> createState() => _AvatarCreatePageState();
}

class _AvatarCreatePageState extends State<AvatarCreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 243, 197, 57),
        title: Text(
          "Avatarını Seç",
        ),
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
