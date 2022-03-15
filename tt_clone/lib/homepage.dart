import 'package:flutter/material.dart';
import 'package:tt_clone/pages/home.dart';
import 'package:tt_clone/pages/messages.dart';
import 'package:tt_clone/pages/plus.dart';
import 'package:tt_clone/pages/profile.dart';
import 'package:tt_clone/pages/search.dart';
import 'homepage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    UserHomePage(),
    UserSearchPage(),
    UserPlusPage(),
    UserMessagesPage(),
    UserProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box_rounded), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_rounded), label: 'Messages'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
