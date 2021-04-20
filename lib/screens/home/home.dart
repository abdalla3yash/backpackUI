import 'package:flutter/material.dart';
import 'package:backpack/screens/home/feed.dart';
import 'package:backpack/screens/home/messages/messages.dart';
import 'package:backpack/screens/location/location.dart';
import 'package:backpack/screens/home/profile/profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    FeedsScreen(),
    MessagesScreen(),
    LocationScreen(),
    ProfileScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        backgroundColor: Colors.white,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex, // new
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home_outlined,
                color: Colors.black,
                size: 26,
              ),
              label: '',
              icon: Icon(
                Icons.home,
                color: Colors.grey,
                size: 26,
              )),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.mark_chat_unread_outlined,
                color: Colors.black,
                size: 26,
              ),
              label: '',
              icon: Icon(
                Icons.mark_chat_unread,
                color: Colors.grey,
                size: 26,
              )),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.location_on_outlined,
                color: Colors.black,
                size: 26,
              ),
              label: '',
              icon: Icon(
                Icons.location_on,
                color: Colors.grey,
                size: 26,
              )),
          BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person_outline,
                color: Colors.black,
                size: 26,
              ),
              label: '',
              icon: Icon(
                Icons.person,
                color: Colors.grey,
                size: 26,
              )),
        ],
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
