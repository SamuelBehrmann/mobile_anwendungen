import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';

class ChatList extends StatelessWidget {
  final List<ChatsModelChat> chats;
  final Function(String) onChatSelected;
  final EdgeInsets padding;

  const ChatList({
    super.key,
    required this.chats,
    required this.onChatSelected,
    this.padding = const EdgeInsets.only(top: 8),
  });

  @override
  Widget build(BuildContext context) => ListView.builder(
        padding: padding,
        itemCount: chats.length,
        itemBuilder: (BuildContext context, int index) {
          final ChatsModelChat chat = chats[index];
          return ListTile(
            leading: CircleAvatar(
              child: chat.profilePicturePath != null
                  ? CustomCachedNetworkImage(imageUrl: chat.profilePicturePath!)
                  : const Icon(Icons.person_outline),
            ),
            title: Text(
              chat.name,
              semanticsLabel: "Chat with ${chat.name}",
            ),
            subtitle: Text(chat.message),
            onTap: () => onChatSelected(chat.id),
          );
        },
      );
}
