import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class leftChatBuble extends StatelessWidget {
  final String text;

  final String timetext;

  const leftChatBuble({
    super.key,
    required this.text,
    required this.timetext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 300,
            ),
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.zero,
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16)),
              color: Colors.amber,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$text",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(left: 20, top: 4),
          child: Text(
            "$timetext",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class rightChatBuble extends StatelessWidget {
  final String text;

  final String timetext;

  const rightChatBuble({
    super.key,
    required this.text,
    required this.timetext,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FittedBox(
          child: Container(
            constraints: BoxConstraints(
              maxWidth: 300,
            ),
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.zero,
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16)),
              color: Colors.amber.shade100,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$text",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(right: 20, top: 4),
          child: Text(
            "$timetext",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
