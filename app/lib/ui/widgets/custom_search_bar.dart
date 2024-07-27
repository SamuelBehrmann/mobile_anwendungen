import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final void Function(String query) onSearch;
  final void Function()? onDiscard;
  final String? currentQuery;

  const CustomSearchBar({
    super.key,
    required this.onSearch,
    this.currentQuery,
    this.onDiscard,
  });

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  static const EdgeInsets _contentPadding = EdgeInsets.all(8);
  static const double _iconSize = 22;
  static const BorderRadius _borderRadius =
      BorderRadius.all(Radius.circular(20));
  static const double searchBarHeight = 40;

  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.currentQuery);
    super.initState();
  }

  @override
  void didUpdateWidget(CustomSearchBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentQuery != oldWidget.currentQuery) {
      if (widget.currentQuery == null) {
        _controller.clear();
      } else {
        _controller.text = widget.currentQuery!;
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SizedBox(
        height: searchBarHeight,
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            contentPadding: _contentPadding,
            prefixIcon: const Icon(
              Icons.search_outlined,
              size: _iconSize,
            ),
            hintText: 'Type to search',
            border: const OutlineInputBorder(
              borderRadius: _borderRadius,
            ),
            suffixIcon: widget.onDiscard != null && _controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(
                      Icons.close,
                      size: _iconSize,
                    ),
                    onPressed: () {
                      widget.onDiscard?.call();
                      setState(_controller.clear);
                    },
                  )
                : const SizedBox.shrink(),
          ),
          onChanged: (String value) => widget.onSearch(value),
        ),
      );
}
