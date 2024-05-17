import 'package:flutter/material.dart';
import 'package:medi_support/ui/common/theme.dart' as theme;

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  BottomNavigationState createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.home_rounded, 0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.add_box, 1),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.chat, 2),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: _buildIcon(Icons.person_sharp, 3),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 14),
        backgroundColor: theme.AppColors.surface,
      );

  Widget _buildIcon(IconData iconData, int index) => Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 32,
            width: 64,
            decoration: BoxDecoration(
              color: _selectedIndex == index
                  ? theme.AppColors.activeButtonNavBar
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Icon(
            iconData,
            color: theme.AppColors.text,
            size: 24,
          ),
        ],
      );
}
