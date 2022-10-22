import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:tradaxs/pages/home_screen.dart';
import 'package:tradaxs/pages/p2p_screen.dart';
import 'package:tradaxs/pages/swap_screen.dart';
import 'package:tradaxs/pages/wallet_main_page.dart';

import '../util/colors_class.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  int _selectedIndex = 0; //New

//New
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _buildScreens = <Widget>[
    const HomeScreen(),
    P2pScreen(),
    SwapScreen(),
    WalletMainPage()
  ];

  static List<Widget> _children = <Widget>[
    const HomeScreen(),
    P2pScreen(),
    SwapScreen(),
    WalletMainPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        selectedIconTheme: IconThemeData(color: ColorOne.cbuttons, size: 24),
        selectedItemColor: ColorOne.cbuttons,
        unselectedIconTheme: const IconThemeData(
          color: CupertinoColors.systemGrey,
          
        ),
        unselectedItemColor: CupertinoColors.systemGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'P2P',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sync_alt_outlined),
            label: 'Swap',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
