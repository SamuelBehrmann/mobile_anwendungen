import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:medi_support/ui/screens/chats/widgets/chats_list.dart';
import 'package:medi_support/ui/widgets/chats_search_bar.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/screens/chats/chats_controller.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';

class ChatsView extends StatelessWidget {
  static const EdgeInsets _searchPadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  final ChatsModel model;
  final ChatsController controller;

  const ChatsView({super.key, required this.model, required this.controller});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(title: some('Chats')),
        body: Column(
          children: <Widget>[
            Padding(
              padding: _searchPadding,
              child: ChatsSearchBar(
                onSearchChanged: controller.filterChats,
              ),
            ),
            Expanded(
              child: ChatList(
                chats: model.filteredChats,
                onChatSelected: (String chatId) => controller.openChat(chatId),
              ),
            ),
          ],
        ),
      );
}
