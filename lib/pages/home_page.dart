import 'package:social_academy/theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:social_academy/widgets/avatar.dart';
import 'dart:math';
import 'package:social_academy/widgets/map_item_widget.dart';
import '../widgets/custom_image_view.dart';


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
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                children: [
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      labelText: 'Yeni bağlantını bul...',
                      suffixIcon: IconButton(
                        icon: Icon(Icons.tune),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: ExpansionTile(
                  leading: CustomImageView(
                    imagePath: imageList[random.nextInt(85)] + ".png",
                    height: 48,
                    width: 48,
                  ),

                  title: Text(
                    username[0],
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.yellow),
                  ), // Text
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right:32.0),
                                      child: Icon(Icons.work, color: Colors.green[500]),
                                    ),
                                  
                                    const Text('Proje - Google Türkiye', textAlign: TextAlign.left),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right:32.0),
                                      child: Icon(Icons.account_balance,
                                          color: Colors.green[500]),
                                    ),
                                    const Text('Istanbul Teknik Üniversitesi',textAlign: TextAlign.left),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                              
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right:32.0),
                                      child: Icon(Icons.auto_awesome,
                                          color: Colors.green[500]),
                                    ),
                                    const Text('Flutter, Figma, Blender', textAlign: TextAlign.left),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right:16.0),
                                child: IconButton(onPressed:() {
                                }, icon: Icon(Icons.info),
                                          color: Colors.green[500]),
                              ),
                          ],
                           ),
                        ],
                      ),
                    ),
                  ],
                  onExpansionChanged: (isExpanded) {
                    print("Expanded: $isExpanded");
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
