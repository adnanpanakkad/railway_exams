import 'package:flutter/material.dart';
import 'package:railway_exams/screens/home_screen.dart';

class BottomBarWithIndicator extends StatefulWidget {
  @override
  _BottomBarWithIndicatorState createState() => _BottomBarWithIndicatorState();
}

class _BottomBarWithIndicatorState extends State<BottomBarWithIndicator> {
  int _currentIndex = 0;
  final List<Widget> _pages = [HomeScreen(),
    //const Center(child: Text('Home Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    const Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            icon: Icons.home,
            label: 'Home',
            isSelected: _currentIndex == 0,
          ),
          _bottomNavigationBarItem(
            icon: Icons.search,
            label: 'Search',
            isSelected: _currentIndex == 1,
          ),
          _bottomNavigationBarItem(
            icon: Icons.person,
            label: 'Profile',
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
      icon: Stack(
        alignment: Alignment.center,
        children: [
          Icon(icon),
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
