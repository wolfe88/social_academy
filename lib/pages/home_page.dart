import 'dart:math';

import 'package:social_academy/theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:social_academy/widgets/avatar.dart';
import 'package:social_academy/widgets/custom_image_view.dart';

import '../widgets/map_item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      child: _Stories(),
      padding: EdgeInsets.all(8),
    );
  }
}

final imageList = AvatarListRandom();
final random = Random();
List username = ["Yunus Emre", "Selin", "Rabia", "Dilara"];

class _Stories extends StatelessWidget {
  const _Stories({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    labelText: 'Search...',
                    suffixIcon: IconButton(
                      icon: Icon(Icons.tune),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
          child: Column(
            children: [
              ExpansionTile(
                title: Text(
                  username[0],
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ), // Text
                children: [
                  ListTile(
                    title: Text("Kariyer", style: TextStyle(fontSize: 24)),
                    onTap: () {},
                  ), // ListTile
                  ListTile(
                    title: Text("Eğitim", style: TextStyle(fontSize: 24)),
                    onTap: () {},
                  ), // ListTile
                  ListTile(
                    title: Text("Beceriler", style: TextStyle(fontSize: 24)),
                    onTap: () {},
                  ), // ListTile
                ],
                onExpansionChanged: (isExpanded) {
                  print("Expanded: $isExpanded");
                },
              ),
              ExpansionTile(
                leading: CustomImageView(
                  imagePath: imageList[random.nextInt(15)] + ".png",
                  height: 48,
                  width: 48,
                ),

                title: Text(
                  username[1],
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ), // Text

                onExpansionChanged: (isExpanded) {
                  print("Expanded: $isExpanded");
                },
              ),
              ExpansionTile(
                title: Text(
                  username[2],
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ), // Text
                children: [
                  ListTile(
                    title: Icon(Icons.home_repair_service),
                    onTap: () {},
                  ), // ListTile
                  ListTile(
                    title: ElevatedButton.icon(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.green)),
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_reaction_outlined,
                      ),
                      label: Text(
                        "beceriler",
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    title: ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.account_balance),
                      label: Text(
                        "eğitim",
                        style: TextStyle(color: Colors.yellow),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
                onExpansionChanged: (isExpanded) {
                  print("Expanded: $isExpanded");
                },
              ),
              ExpansionTile(
                title: Text(
                  username[3],
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ), // Text
                children: [
                  ListTile(
                    title: Text("Kariyer", style: TextStyle(fontSize: 24)),
                    onTap: () {},
                  ), // ListTile
                  ListTile(
                    title: Text("Eğitim", style: TextStyle(fontSize: 24)),
                    onTap: () {},
                  ), // ListTile
                  ListTile(
                    title: Text("Beceriler", style: TextStyle(fontSize: 24)),
                    onTap: () {},
                  ), // ListTile
                ],
                onExpansionChanged: (isExpanded) {
                  print("Expanded: $isExpanded");
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
