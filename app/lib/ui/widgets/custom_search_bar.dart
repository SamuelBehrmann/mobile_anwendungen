import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
    required this.onSearch,
    required this.currentQuery,
    this.onDiscard,
  });
  final void Function({required String query}) onSearch;
  final void Function()? onDiscard;
  final String currentQuery;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
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
      _controller.text = widget.currentQuery;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          TextFormField(
            controller: _controller,
            textAlign: TextAlign.center,
            onChanged: (String value) => setState(() {
              widget.onSearch(query: value);
            }),
            decoration: InputDecoration(
              hintText: 'Search',
              suffixIcon: _controller.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        widget.onDiscard?.call();
                        setState(_controller.clear);
                      },
                    )
                  : const SizedBox(width: 48),
            ),
          ),
        ],
      );
}
