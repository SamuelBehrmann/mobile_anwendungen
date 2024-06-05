import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  final List<String> items;
  const CustomSearchBar({super.key, required this.items});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  List<String> filterdList = <String>[];

  List<String> filterList(String text) =>
      widget.items.where((element) => element.contains(text)).toList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterdList = widget.items;
  }

  @override
  Widget build(BuildContext context) => SearchAnchor(
        textCapitalization: TextCapitalization.words,
        textInputAction: TextInputAction.search,
        builder: (context, controller) => SearchBar(
          hintText: "Search",
          onTap: () => controller.openView(),
          onChanged: (_) => controller.openView(),
        ),
        suggestionsBuilder: (context, controller) =>
            filterList(controller.text).map(
          (e) => ListTile(
            title: Text(e),
            onTap: () {
              controller.closeView(e);
              controller.text = e;
            },
          ),
        ),
      );
}
