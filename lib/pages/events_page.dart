import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:getwidget/getwidget.dart';
import 'package:sizer/sizer.dart';
import 'package:social_academy/widgets/popup_widget.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(32),
          child: ElevatedButton(
            child: Text("popup"),
            onPressed: () {
              openDialog("username", "work", "edu", "skills", "info", context);
            },
          ),
        ),
      ],
    );
  }
}
