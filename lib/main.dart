import 'package:sizer/sizer.dart';
import 'package:social_academy/constants/routes.dart';
import 'package:social_academy/models/message.dart';
import 'package:social_academy/pages/chat_page.dart';
import 'package:social_academy/pages/map_page.dart';
import 'package:social_academy/pages/events_page.dart';
import 'package:social_academy/pages/home_page.dart';
import 'package:social_academy/pages/conversations_page.dart';
import 'package:social_academy/pages/notification_page.dart';
import 'package:social_academy/pages/profile_page.dart';
import 'package:social_academy/screens/home_screen.dart';
import 'package:social_academy/theme.dart';
import 'package:flutter/material.dart';
import 'package:social_academy/pages/avatarcreate_page.dart';

void main() => runApp(BasePage());

class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          themeMode: ThemeMode.light,
          debugShowCheckedModeBanner: false,
          title: "social_academy",
          home: const HomeScreen(), //child appbar
          routes: {
            homepageRoute: (context) => const HomePage(),
            conversationspageRoute: (context) => const MessagePage(),
            mappageRoute: (context) => MapPage(),
            eventspageRoute: (context) => EventsScreen(),
            profilepageRoute: (context) => const ProfilePage(),
            chatRoute: (context) => const ChatPage(),
            notificationRoute: (context) => const NotificationPage(),
            avatarRoute: (context) => AvatarCreatePage(),
          },
        );
      },
    );
  }
}
