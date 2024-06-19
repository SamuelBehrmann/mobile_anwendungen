import 'package:flutter/material.dart';

class ChatsSearchBar extends StatefulWidget {
  final Function(String) onSearchChanged;

  const ChatsSearchBar({
    super.key,
    required this.onSearchChanged,
  });

  @override
  State<ChatsSearchBar> createState() => _ChatsSearchBarState();
}

class _ChatsSearchBarState extends State<ChatsSearchBar> {
  static const EdgeInsets _contentPadding = EdgeInsets.all(8);
  static const double _iconSize = 22;
  static const BorderRadius _borderRadius =
      BorderRadius.all(Radius.circular(20));
  static const double searchBarHeight = 40;

  String searchQuery = '';

  @override
  Widget build(BuildContext context) => SizedBox(
    height: searchBarHeight,
    child: TextField(
      decoration: const InputDecoration(
        contentPadding: _contentPadding,
        prefixIcon: Icon(
          Icons.search_outlined,
          size: _iconSize,
        ),
        hintText: 'Search',
        border: OutlineInputBorder(
          borderRadius: _borderRadius,
        ),
      ),
      onChanged: (String value) {
        setState(() {
          searchQuery = value;
        });
        widget.onSearchChanged(value);
      },
    ),
  );
}
