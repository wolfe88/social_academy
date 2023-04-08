import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_academy/helpers.dart';
import 'package:social_academy/theme.dart';
import 'package:social_academy/widgets/avatar.dart';
import "package:social_academy/widgets/chatbuble.dart";
import 'package:social_academy/widgets/textfield.dart';

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
      body: Column(
        children: [
          leftChatBuble(
              text:
                  "dljsgfklsdjglksjdklgjsdklgjsdklgjdsklsdfıjuhgjsdhgjksdhgjksdhgjksdhgkjsdhgskjdhgjsdhgjsdagfsdagsdgsdgsdgsdgsdgsdgsdgsdgdsdslkj",
              timetext: "4.44"),
          rightChatBuble(
              text:
                  "sdpjgoklsdjgkldsjklgdsjgklsdhjkgbsdhkljghdsjklghdsjkghsdjkghfsdjkghdfkjghfdjkghdjfkghkfjdghfdjkhgfkdjh",
              timetext: "4.45"),
          rightChatBuble(
              text:
                  "sdpjgoklsdjgkldsjklksdjhafhsdjhfkjdashfkjdshfkjsdgdsjgklsdhjkgbsdhkljghdsjklghdsjkghsdjkghfsdjkghdfkjghfdjkghdjfkghkfjdghfdjkhgfkdjh",
              timetext: "4.46"),
          rightChatBuble(
              text:
                  "sdpjgoklsdjgkldsjklgdssdghsdkljghdsjkghdsjkghsdjkghdskghsdghkjdhsgjgklsdhjkgbsdhkljghdsjklghdsjkghsdjkghfsdjkghdfkjghfdjkghdjfkghkfjdghfdjkhgfkdjh",
              timetext: "4.47"),
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10, bottom: 10, top: 10),
                  height: 60,
                  width: double.infinity,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Write message...",
                              hintStyle: TextStyle(color: Colors.black54),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                          size: 18,
                        ),
                        backgroundColor: Colors.blue,
                        elevation: 0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
