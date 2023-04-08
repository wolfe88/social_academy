import 'package:social_academy/widgets/map_item_widget.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.fromLTRB(0, 9, 0, 9),
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
      ),
    );
  }
}
