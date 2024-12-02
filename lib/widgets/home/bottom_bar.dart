import 'package:flutter/material.dart';
import 'package:railway_exams/screens/home_screen.dart';

class BottomBarScreens extends StatefulWidget {
  @override
  _BottomBarScreensState createState() => _BottomBarScreensState();
}

class _BottomBarScreensState extends State<BottomBarScreens> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    const Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          _bottomNavigationBarItem(
            icon: Icons.house,
            label: 'Home',
            isSelected: _currentIndex == 0,
          ),
          _bottomNavigationBarItem(
            icon: Icons.pageview,
            label: 'Self Study',
            isSelected: _currentIndex == 1,
          ),
          _bottomNavigationBarItem(
            icon: Icons.person,
            label: 'Me',
            isSelected: _currentIndex == 2,
          ),
        ],
        showUnselectedLabels: true,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  BottomNavigationBarItem _bottomNavigationBarItem({
    required IconData icon,
    required String label,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      backgroundColor: Colors.grey[900],
      icon: Stack(
        alignment: Alignment.center,
        children: [
          Icon(
            icon,
          ),
          if (isSelected)
            Positioned(
              bottom: -2,
              child: Container(
                height: 4,
                width: 20,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
        ],
      ),
      label: label,
    );
  }
}
