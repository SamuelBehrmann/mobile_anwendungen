import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/chats/widgets/chats_list.dart';
import 'package:medi_support/ui/widgets/chats_search_bar.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/screens/chats/chats_controller.dart';

class ChatsView extends StatefulWidget {
  final ChatsModel model;
  final ChatsController controller;

  const ChatsView({super.key, required this.model, required this.controller});

  @override
  ChatsViewState createState() => ChatsViewState();
}

class ChatsViewState extends State<ChatsView> {
  static const EdgeInsets _padding = EdgeInsets.only(top: 8);
  String searchQuery = '';

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: Column(
        children: <Widget>[
          ChatsSearchBar(
            onSearchChanged: (String query) {
              setState(() {
                searchQuery = query;
              });
            },
          ),
          Expanded(
            child: Padding(
              padding: _padding,
              child: ChatList(
                searchQuery: searchQuery,
                onFilterChats: (String query) => widget.controller.filterChats(query),
                onChatSelected: (String chatId) => widget.controller.openChat(chatId),
              ),
            ),
          ),
        ],
      ),
    );
}