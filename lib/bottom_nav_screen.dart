import 'package:flutter/material.dart';
import 'package:testing_app/counter_screen.dart';
import 'package:testing_app/home_screen.dart';
import 'package:testing_app/profile.dart';
import 'package:testing_app/settings.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currrntPage = 0;
  List pages = [
    const MyHomeScreen(),
    const CounterScreen(),
    const SettingScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('My App'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currrntPage,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (value) {
          setState(() {
            currrntPage = value;
          });
        },
      ),
      body: pages[currrntPage],
    );
  }
}
