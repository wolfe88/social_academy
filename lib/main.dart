import 'package:social_academy/constants/routes.dart';
import 'package:social_academy/pages/calls_page.dart';
import 'package:social_academy/pages/contacts_page.dart';
import 'package:social_academy/pages/messages_page.dart';
import 'package:social_academy/pages/notifications_page.dart';
import 'package:social_academy/screens/home_screen.dart';
import 'package:social_academy/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          contactsRoute: (context) => const ContactsPage(),
          messagesRoute: (context) => const MessagesPage(),
          callsRoute: (context) => const CallsPage(),
          notificationsRoute: (context) => const NotificationsPage(),
        });
  }
}
