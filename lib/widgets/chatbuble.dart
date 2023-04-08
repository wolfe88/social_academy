import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_academy/main.dart';

class LeftChatBuble extends StatelessWidget {
  final String text;

  final String timetext;

  const LeftChatBuble({
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
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            decoration: const BoxDecoration(
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
                text,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 20, top: 4),
          child: Text(
            timetext,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class RightChatBuble extends StatelessWidget {
  final String text;

  final String timetext;

  const RightChatBuble({
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
            constraints: const BoxConstraints(
              maxWidth: 300,
            ),
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.zero,
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16)),
              color: Colors.amber.shade100,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                style: const TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(right: 20, top: 4),
          child: Text(
            timetext,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class NotificationBubble extends StatelessWidget {
  final String text;

  const NotificationBubble({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      child: Container(
        constraints: const BoxConstraints(
          minWidth: 350,
          maxWidth: 350,
        ),
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            text,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
