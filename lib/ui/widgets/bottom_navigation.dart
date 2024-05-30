import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

part 'bottom_navigation.freezed.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  BottomNavigationState createState() => BottomNavigationState();
}

class BottomNavigationState extends State<BottomNavigation> {
  static const double _iconSize = 24.0;
  static const double _containerHeight = 36.0;
  static const double _containerWidth = 64.0;

  static const List<BottomNavBarItem> _items = <BottomNavBarItem>[
    BottomNavBarItem(
      icon: Icons.home_rounded,
      label: 'Home',
    ),
    BottomNavBarItem(
      icon: Icons.add_box,
      label: 'Post',
    ),
    BottomNavBarItem(
      icon: Icons.chat,
      label: 'Chat',
    ),
    BottomNavBarItem(
      icon: Icons.person_sharp,
      label: 'Profile',
    ),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _items
            .mapIndexed(
              (int index, BottomNavBarItem item) => BottomNavigationBarItem(
                icon: _buildIcon(item.icon, index),
                label: item.label,
              ),
            )
            .toList(),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        backgroundColor: Theme.of(context).colorScheme.surface,
      );

  Widget _buildIcon(IconData iconData, int index) => Container(
        height: _containerHeight,
        width: _containerWidth,
        decoration: ShapeDecoration(
          color: _selectedIndex == index
              ? Theme.of(context).colorScheme.secondaryContainer
              : Colors.transparent,
          shape: const StadiumBorder(),
        ),
        child: Icon(
          iconData,
          color: Theme.of(context).colorScheme.onSecondaryContainer,
          size: _iconSize,
        ),
      );
}

@freezed
class BottomNavBarItem with _$BottomNavBarItem {
  const factory BottomNavBarItem({
    required IconData icon,
    required String label,
  }) = _BottomNavBarItem;
}
