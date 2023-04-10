import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:social_academy/theme.dart';
import "package:social_academy/widgets/chatbuble.dart";

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 233, 205, 80),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        centerTitle: true,
        title: const Text(
          "Bildirimler",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: NotificationBubble(
                    text:
                        "Yunus Emre yeni bir etkinlik oluşuturdu! Şimdi incele."),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: NotificationBubble(
                        text: "Yakınlarda yeni bir etkinlik var!")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: NotificationBubble(
                        text: "Dilara Maya seninle bağlantı kurmak istiyor.")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: NotificationBubble(
                        text: "Yeni bir arkadaş isteğin var!")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: NotificationBubble(
                        text: "Çağatay tarafından yeni bir mesajın var!")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: NotificationBubble(
                        text: "Melis seninle bir konuşma başlatmak istiyor.")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: NotificationBubble(
                        text: "Bugün katılacağın etkinlik başlamak üzere!")),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: NotificationBubble(
                        text: "Selin seni yeni bir etkinliğe davet etti!")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
