import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:collection/collection.dart';

part 'custom_bottom_navigation_bar.freezed.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  static const double _iconSize = 24.0;
  static const double _containerHeight = 36.0;
  static const double _containerWidth = 64.0;

  final int currentIndex;
  final void Function(int) onTap;
  final List<CustomBottomNavBarItem> items;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: items
            .mapIndexed(
              (int index, CustomBottomNavBarItem item) =>
                  BottomNavigationBarItem(
                icon: _buildIcon(item.icon, index),
                label: item.label,
              ),
            )
            .toList(),
        currentIndex: currentIndex,
        onTap: onTap,
        selectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        unselectedLabelStyle: Theme.of(context).textTheme.bodyMedium,
        backgroundColor: Theme.of(context).colorScheme.surface,
      );

  Widget _buildIcon(IconData iconData, int index) => Builder(
        builder: (BuildContext context) {
          final ThemeData theme = Theme.of(context);

          return Container(
            height: _containerHeight,
            width: _containerWidth,
            decoration: ShapeDecoration(
              color: currentIndex == index
                  ? theme.colorScheme.secondaryContainer
                  : Colors.transparent,
              shape: const StadiumBorder(),
            ),
            child: Icon(
              iconData,
              color: theme.colorScheme.onSecondaryContainer,
              size: _iconSize,
            ),
          );
        },
      );
}

@freezed
class CustomBottomNavBarItem with _$CustomBottomNavBarItem {
  const factory CustomBottomNavBarItem({
    required IconData icon,
    required String label,
  }) = _BottomNavBarItem;
}
