// ignore_for_file: unused_import

import 'package:flutter/rendering.dart';
import 'package:social_academy/theme.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:social_academy/widgets/avatar.dart';

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

List username = ["Yunus Emre", "Selin", "Rabia", "Dilara"];

class _Stories extends StatelessWidget {
  const _Stories({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start
    ,
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
              ),),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
          child: Column(
            children: [
              ExpansionTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQumX3R_S4mU4LTy4dQM9_RY97GXkMmx7OmRA&usqp=CAU"),
                ),

                title: Text(
                  username[0],
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ), // Text
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.work, color: Colors.green[500]),
                            const Text('Kariyer'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.account_balance, color: Colors.green[500]),
                            const Text('Eğitim'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.auto_awesome, color: Colors.green[500]),
                            const Text('Beceriler'),
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
              ExpansionTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQumX3R_S4mU4LTy4dQM9_RY97GXkMmx7OmRA&usqp=CAU"),
                ),
                title: Text(
                  username[1],
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ), // Text
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.work, color: Colors.green[500]),
                            const Text('Kariyer'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.account_balance, color: Colors.green[500]),
                            const Text('Eğitim'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.auto_awesome, color: Colors.green[500]),
                            const Text('Beceriler'),
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
              ExpansionTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQumX3R_S4mU4LTy4dQM9_RY97GXkMmx7OmRA&usqp=CAU"),
                ),
                title: Text(
                  username[2],
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ), // Text
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.work, color: Colors.green[500]),
                            const Text('Kariyer'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.account_balance, color: Colors.green[500]),
                            const Text('Eğitim'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.auto_awesome, color: Colors.green[500]),
                            const Text('Beceriler'),
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
              ExpansionTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQumX3R_S4mU4LTy4dQM9_RY97GXkMmx7OmRA&usqp=CAU"),
                ),
                title: Text(
                  username[3],
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ), // Text
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.work, color: Colors.green[500]),
                            const Text('Kariyer'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.account_balance, color: Colors.green[500]),
                            const Text('Eğitim'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.auto_awesome, color: Colors.green[500]),
                            const Text('Beceriler'),
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
            ],
          ),
        ),
      ],
    );
  }
}
