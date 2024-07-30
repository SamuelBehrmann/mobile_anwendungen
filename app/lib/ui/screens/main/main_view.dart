import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/ui/widgets/custom_bottom_navigation_bar.dart';

class MainView extends StatefulWidget {
  static const IconData _homeIcon = Icons.home;
  static const IconData _postIcon = Icons.add;
  static const IconData _chatsIcon = Icons.chat;
  static const IconData _profileIcon = Icons.person;

  static const String _homeLabel = 'Home';
  static const String _postLabel = 'Post';
  static const String _chatsLabel = 'Chats';
  static const String _profileLabel = 'Profile';

  static const List<CustomBottomNavBarItem> bottomNavBarItems =
      <CustomBottomNavBarItem>[
    CustomBottomNavBarItem(
      icon: _homeIcon,
      label: _homeLabel,
    ),
    CustomBottomNavBarItem(
      icon: _postIcon,
      label: _postLabel,
    ),
    CustomBottomNavBarItem(
      icon: _chatsIcon,
      label: _chatsLabel,
    ),
    CustomBottomNavBarItem(
      icon: _profileIcon,
      label: _profileLabel,
    ),
  ];

  final StatefulNavigationShell navigationShell;
  const MainView({super.key, required this.navigationShell});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: widget.navigationShell,
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: widget.navigationShell.currentIndex,
          onTap: (int index) {
            widget.navigationShell.goBranch(index);
            setState(() {});
          },
          items: MainView.bottomNavBarItems,
        ),
      );
}
