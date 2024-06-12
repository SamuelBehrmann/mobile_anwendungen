import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key, required this.onSearch});
  final void Function({required String query}) onSearch;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  late final TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Column(
        children: [
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
                      onPressed: () => setState(_controller.clear),
                    )
                  : const SizedBox(width: 48),
            ),
          ),
        ],
      );
}
