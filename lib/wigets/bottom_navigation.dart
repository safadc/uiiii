import 'package:flutter/material.dart';
import 'package:second_task/pages/home_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;

  List<Widget> widgets = [
    HomePage(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: iconWidget(Icons.home, 0),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: iconWidget(Icons.note, 1),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: iconWidget(Icons.bookmark, 2),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: iconWidget(Icons.mail, 3),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: iconWidget(Icons.person, 4),
            label: "",
          ),
        ],
      ),
    );
  }

  Widget iconWidget(IconData icon, int i) {
    if (currentIndex == i) {
      return CircleAvatar(
        backgroundColor: Colors.blue,
        child: Icon(icon),
      );
    }
    return Icon(icon);
  }
}
