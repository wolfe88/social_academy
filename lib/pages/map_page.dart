import 'package:sizer/sizer.dart';
import 'package:social_academy/widgets/map_item_widget.dart';
import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Wrap(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 28,
                      ),
                      child: Text(
                        "Çevrendekiler",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 77,
                        child: ListView.separated(
                          padding: EdgeInsets.only(
                            left: 28,
                            top: 6,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: 24,
                            );
                          },
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return MapItemWidget();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Expanded(
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/map.png"),
            ),
          ),
        ],
      ),
    );
  }
}
