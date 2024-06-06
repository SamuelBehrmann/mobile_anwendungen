import 'package:flutter/material.dart';
import 'package:medi_support/ui/widgets/icon_row.dart';

class CustomSearchBar extends StatefulWidget {
  final List<String> items;
  const CustomSearchBar({super.key, required this.items});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  List<String> filterdList = <String>[];

  List<String> filterList(String text) =>
      widget.items.where((String element) => element.contains(text)).toList();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filterdList = widget.items;
  }

  @override
  Widget build(BuildContext context) => SearchAnchor(
        builder: (BuildContext context, SearchController controller) =>
            IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            controller.openView();
          },
        ),
        suggestionsBuilder:
            (BuildContext context, SearchController controller) {
          Iterable<ListTile> list = filterList(controller.text).map(
            (String e) => ListTile(
              title: Text(e),
              onTap: () {
                controller
                  ..closeView(e)
                  ..text = e;
              },
            ),
          );

          return <Widget>[
            ...list,
            if (controller.text.isEmpty) ...<Widget>[
              const Divider(),
              const IconRow(
                iconSize: 24.0,
                icons: <IconWithLabel>[
                  IconWithLabel(Icons.search, "test"),
                  IconWithLabel(Icons.search, "test2"),
                  IconWithLabel(Icons.search, "test3"),
                  IconWithLabel(Icons.search, "test4"),
                ],
              ),
            ],
          ];
        },
      );
}
