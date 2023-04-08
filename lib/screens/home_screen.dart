import 'package:google_fonts/google_fonts.dart';
import 'package:social_academy/helpers.dart';
import 'package:social_academy/pages/map_page.dart';
import 'package:social_academy/pages/events_page.dart';
import 'package:social_academy/pages/home_page.dart';
import 'package:social_academy/pages/conversations_page.dart';
import 'package:social_academy/pages/profile_page.dart';
import 'package:social_academy/theme.dart';
import 'package:social_academy/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/avatar.dart';

// int pageIndex0 = 0;

final pages = [
  const HomePage(),
  const ConversationsPage(),
  MapPage(),
  const EventsPage(),
  const ProfilePage(),
];

final pageTitles = [
  "Home",
  "Sohbetler",
  "Harita",
  "Etkinlikler",
  "Profil",
];

final ValueNotifier<int> pageIndex = ValueNotifier(0);
final ValueNotifier<String> title = ValueNotifier("Messages");

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _onItemSelected(value) {
    setState(() {
      title.value = pageTitles[value];
      pageIndex.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ValueListenableBuilder(
          valueListenable: title,
          builder: (context, value, child) {
            return Text(
              value,
              style: const TextStyle(
                letterSpacing: 1.4,
                height: 1,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            );
          },
        ),
        // actions:
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: IconButton(
            icon: Avatar.small(url: Helpers.randomPictureUrl()),
            onPressed: () {},
            splashRadius: 24,
          ),
        ),

        // Align(
        //   alignment: Alignment.centerRight,
        //   child: IconButton(
        //     icon: const Icon(Icons.search, color: Colors.white),
        //     onPressed: () {},

        //     // splashColor: Colors.red,
        //     // highlightColor: Colors.red,
        //     splashRadius: 24,
        //   ),
        // ),
      ),
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (BuildContext context, int value, _) {
          return pages[value];
        },
      ),
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: _onItemSelected,
      ),
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  const _BottomNavigationBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  State<_BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
  var selectedIndex = 0;

  void handleItemSelected(int index) {
    widget.onItemSelected(index);
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: false,
        bottom: true,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavigationBarItem(
              label: "Home",
              icon: CupertinoIcons.home,
              route: 0,
              onTap: handleItemSelected,
              isSelected: (selectedIndex == 0),
            ),
            _NavigationBarItem(
              label: "Sohbetler",
              icon: CupertinoIcons.bubble_left_bubble_right,
              route: 1,
              onTap: handleItemSelected,
              isSelected: (selectedIndex == 1),
            ),
            _NavigationBarItem(
              label: "Harita",
              icon: CupertinoIcons.map,
              route: 2,
              onTap: handleItemSelected,
              isSelected: (selectedIndex == 2),
            ),
            _NavigationBarItem(
              label: "Ekinlikler",
              icon: CupertinoIcons.rectangle_stack_badge_person_crop,
              route: 3,
              onTap: handleItemSelected,
              isSelected: (selectedIndex == 3),
            ),
            _NavigationBarItem(
              label: "Profil",
              icon: CupertinoIcons.person,
              route: 4,
              onTap: handleItemSelected,
              isSelected: (selectedIndex == 4),
            ),
          ],
        ));
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    super.key,
    required this.label,
    required this.icon,
    required this.route,
    required this.onTap,
    this.isSelected = false,
  });

  final bool isSelected;
  final ValueChanged<int> onTap;
  final String label;
  final int route;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              onTap(route);
            },
            icon: Icon(
              icon,
              size: 25,
              color: isSelected ? AppColors.secondary : null,
            ),
          ),
          const SizedBox(
            height: 0.1,
          ),
          Text(
            label,
            style: isSelected
                ? const TextStyle(
                    color: AppColors.secondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  )
                : const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
