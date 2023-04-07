import 'package:social_academy/theme.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      child: _Stories(),
      padding: EdgeInsets.all(8),
    );
  }
}

class _Stories extends StatelessWidget {
  const _Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 134,
      child: Column(
        children: [
          const Text(
            "stories",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 15,
              color: AppColors.textFaded,
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return const Text("data");
              },
            ),
          )
        ],
      ),
    );
  }
}
