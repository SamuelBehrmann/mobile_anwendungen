import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/chats/chats_controller.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';

class ChatsView extends StatefulWidget {
  final ChatsModel model;
  final ChatsController controller;

  const ChatsView({super.key, required this.model, required this.controller});

  @override
  ChatsViewState createState() => ChatsViewState();
}

class ChatsViewState extends State<ChatsView> {
  static const EdgeInsets _topPadding = EdgeInsets.only(top: 8);

  String searchQuery = '';

  void _updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Chats'),
        ),
        body: Column(
          children: <Widget>[
            SearchBarWidget(
              onSearchChanged: _updateSearchQuery,
            ),
            Expanded(
              child: Padding(
                padding: _topPadding,
                child: ChatListWidget(
                  model: widget.model,
                  controller: widget.controller,
                  searchQuery: searchQuery,
                ),
              ),
            ),
          ],
        ),
      );
}

class SearchBarWidget extends StatefulWidget {
  final Function(String) onSearchChanged;

  const SearchBarWidget({
    super.key,
    required this.onSearchChanged,
  });

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  static const EdgeInsets _searchPadding =
      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8);
  static const EdgeInsets _contentPadding = EdgeInsets.all(8);
  static const double _iconSize = 22;
  static const BorderRadius _borderRadius =
      BorderRadius.all(Radius.circular(20));
  static const double searchBarHeight = 40;

  String searchQuery = '';

  @override
  Widget build(BuildContext context) => Padding(
        padding: _searchPadding,
        child: SizedBox(
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
        ),
      );
}

class ChatListWidget extends StatelessWidget {
  final ChatsModel model;
  final ChatsController controller;
  final String searchQuery;

  const ChatListWidget({
    super.key,
    required this.model,
    required this.controller,
    required this.searchQuery,
  });

  @override
  Widget build(BuildContext context) {
    final List<SingleChat> filteredChats = controller.filterChats(searchQuery);

    return ListView.builder(
      itemCount: filteredChats.length,
      itemBuilder: (BuildContext context, int index) {
        final SingleChat chat = filteredChats[index];
        return ListTile(
          leading: CircleAvatar(
            child: chat.profilePicturePath != null
                ? CustomCachedNetworkImage(
                    imageUrl: chat.profilePicturePath!,
                  )
                : const Icon(
                    Icons.person_outline,
                  ),
          ),
          title: Text(chat.name),
          subtitle: Text(chat.message),
          onTap: () => controller.openChat(index.toString()),
        );
      },
    );
  }
}
