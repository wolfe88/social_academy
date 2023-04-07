import 'package:social_academy/constants/routes.dart';
import 'package:social_academy/pages/map_page.dart';
import 'package:social_academy/pages/events_page.dart';
import 'package:social_academy/pages/home_page.dart';
import 'package:social_academy/pages/conversations_page.dart';
import 'package:social_academy/pages/profile_page.dart';
import 'package:social_academy/screens/home_screen.dart';
import 'package:social_academy/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(BasePage());

class BasePage extends StatelessWidget {
  const BasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: AppTheme.light(),
        darkTheme: AppTheme.dark(),
        themeMode: ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        title: "social_academy",
        home: const HomeScreen(), //child appbar
        routes: {
          homepageRoute: (context) => const HomePage(),
          conversationspageRoute: (context) => const ConversationsPage(),
          mappageRoute: (context) => const MapPage(),
          eventspageRoute: (context) => const EventsPage(),
          profilepageRoute: (context) => const ProfilePage(),
        });
  }
}
