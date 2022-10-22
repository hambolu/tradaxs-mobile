import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tradaxs/pages/scan_screen.dart';

import '../notification_screen.dart';
import '../user_profile.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(height: 40),
      IconButton(
        icon: const Icon(Icons.person),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const UserProfile()),
          );
        },
      ),
      const SizedBox(width: 10),
      SizedBox(width: 180,
      height: 30,
      child: TextField(
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.blueAccent,
            ),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(9),
                suffixIcon: Icon(Icons.search,size: 14,),
                hintText: "Search",

                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueAccent, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)))),
      ),
      IconButton(
        icon: const Icon(Icons.qr_code_scanner),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ScanScreen()),
          );
        },
      ),
      IconButton(
        icon: const Icon(Icons.support_agent),
        onPressed: () {

        },
      ),
      IconButton(
        icon: const Icon(Icons.notifications),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NotificationScreen()),
          );
        },
      ),
    ]);
  }
}
