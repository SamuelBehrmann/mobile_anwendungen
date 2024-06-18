import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';

class ChatList extends StatelessWidget {
  final String searchQuery;
  final List<SingleChat> Function(String) onFilterChats;
  final Function(String) onChatSelected;

  const ChatList({
    super.key,
    required this.searchQuery,
    required this.onFilterChats,
    required this.onChatSelected,
  });

  @override
  Widget build(BuildContext context) {
    final List<SingleChat> filteredChats = onFilterChats(searchQuery);

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
          onTap: () => onChatSelected(index.toString()),
        );
      },
    );
  }
}