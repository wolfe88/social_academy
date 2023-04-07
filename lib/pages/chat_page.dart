import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_academy/helpers.dart';
import 'package:social_academy/theme.dart';
import 'package:social_academy/widgets/avatar.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "KullanıcıAdı",
          textAlign: TextAlign.center,
        ),
        foregroundColor: AppColors.cardLight,
        backgroundColor: AppColors.secondary,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Avatar.medium(
              url: Helpers.randomPictureUrl(),
            ),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: Container(
          height: 150,
          constraints: BoxConstraints(
            maxHeight: 200.0,
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
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin rutrum imperdiet nisi, at euismod lorem blandit egestas. Nam at ultrices ex. Nullam molestie arcu lacus. Mauris sed erat interdum, finibus ligula maximus, ullamcorper elit. Mauris fermentum elit et libero efficitur, a sagittis est dignissim. Nam tortor tellus, malesuada non pulvinar eu, tincidunt dignissim quam. Nulla vestibulum, diam sit amet pulvinar condimentum, magna velit bibendum neque, sit amet scelerisque lacus turpis quis magna. Fusce venenatis sem a dolor efficitur, ac congue tellus malesuada. Maecenas at bibendum purus. Quisque metus nisl, blandit id tincidunt sed, ornare at ex. Nunc a erat hendrerit, porta eros feugiat, faucibus magna.",
                style: TextStyle(color: Colors.black),
              ))),
    );
  }
}
