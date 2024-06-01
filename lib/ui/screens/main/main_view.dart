import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/ui/widgets/custom_bottom_navigation_bar.dart';

class MainView extends StatefulWidget {
  final StatefulNavigationShell navigationShell;

  const MainView({
    super.key,
    required this.navigationShell,
  });

  static const List<CustomBottomNavBarItem> bottomNavigationBarItems =
      <CustomBottomNavBarItem>[
    CustomBottomNavBarItem(
      icon: Icons.home_rounded,
      label: 'Home',
    ),
    CustomBottomNavBarItem(
      icon: Icons.add_box,
      label: 'Post',
    ),
    CustomBottomNavBarItem(
      icon: Icons.chat,
      label: 'Chat',
    ),
    CustomBottomNavBarItem(
      icon: Icons.person_sharp,
      label: 'Profile',
    ),
  ];

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  void setIndex(int index) {
    setState(() {
      widget.navigationShell.goBranch(
        index,
        initialLocation: index == widget.navigationShell.currentIndex,
      );
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: widget.navigationShell,
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: widget.navigationShell.currentIndex,
          onTap: setIndex,
          items: MainView.bottomNavigationBarItems,
        ),
      );
}
