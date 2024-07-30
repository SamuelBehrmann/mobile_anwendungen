import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/chats/widgets/chats_list.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/screens/chats/chats_controller.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_search_bar.dart';

class ChatsView extends StatelessWidget {
  static const EdgeInsets _searchPadding =
      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0);

  final ChatsModel model;
  final ChatsController controller;

  const ChatsView({super.key, required this.model, required this.controller});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const CustomAppBar(title: 'Chats'),
        body: model.when(
          data: _buildData,
          loading: _buildLoading,
          error: _buildError,
        ),
      );

  Widget _buildError(String message) => Center(child: Text(message));

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());

  Widget _buildData(_, List<ChatsModelChat> filteredChats) => Column(
        children: <Widget>[
          Padding(
            padding: _searchPadding,
            child: CustomSearchBar(onSearch: controller.filterChats),
          ),
          Expanded(
            child: ChatList(
              chats: filteredChats,
              onChatSelected: (String chatId) => controller.openChat(chatId),
            ),
          ),
        ],
      );
}
