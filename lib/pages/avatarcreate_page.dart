import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'dart:developer';
import 'package:random_avatar/random_avatar.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: GFButton(
                size: GFSize.LARGE,
                color: Colors.white,
                textColor: Colors.black,
                onPressed: () {
                  String svg = randomAvatarString(
                    DateTime.now().toIso8601String(),
                    trBackground: false,
                  );
                  log(svg);

                  _painters.add(
                    randomAvatar(
                      DateTime.now().toIso8601String(),
                      height: 200,
                      width: 200,
                    ),
                  );
                  _controller.text = svg;
                  setState(() {});
                },
                child: const Text("Avatar Oluştur"),
              ),
            ),
            const SizedBox(height: 20),
            ..._painters,
          ],
        ),
      ),
    );
  }
}
