import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/ui/widgets/custom_bottom_navigation_bar.dart';

class MainView extends StatefulWidget {
  static const List<CustomBottomNavBarItem> bottomNavBarItems =
      <CustomBottomNavBarItem>[
    CustomBottomNavBarItem(
      icon: Icons.home,
      label: 'Home',
    ),
    CustomBottomNavBarItem(
      icon: Icons.add,
      label: 'Post',
    ),
    CustomBottomNavBarItem(
      icon: Icons.chat,
      label: 'Chat',
    ),
    CustomBottomNavBarItem(
      icon: Icons.person,
      label: 'Profile',
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
