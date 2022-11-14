import 'package:bottom_navigation_bar_test/screens/home_page.dart';
import 'package:bottom_navigation_bar_test/screens/posts.dart';
import 'package:bottom_navigation_bar_test/screens/setting.dart';
import 'package:flutter/material.dart';

class NavigatorView extends StatefulWidget {
  const NavigatorView({super.key});

  @override
  State<NavigatorView> createState() => _NavigatorViewState();
}

class _NavigatorViewState extends State<NavigatorView> {
  int indexScreen = 0;

  List<Widget> myWidget = const [
    HomePage(),
    MyPosts(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo'),
      ),
      body: IndexedStack(
        index: indexScreen,
        children: myWidget,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add),
            label: 'My Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: indexScreen,
        selectedItemColor: Colors.cyan,
        onTap: (index) {
          setState(() {
            indexScreen = index;
          });
        },
      ),
    );
  }
}
