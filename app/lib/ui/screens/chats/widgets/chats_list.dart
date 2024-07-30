import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';

class ChatList extends StatelessWidget {
  static const EdgeInsets _defaultPadding = EdgeInsets.only(top: 8.0);
  static const IconData _defaultAvatarIcon = Icons.person_outline;
  static const String _prefix = "Chat with ";

  final List<ChatsModelChat> chats;
  final Function(String) onChatSelected;
  final EdgeInsets padding;

  const ChatList({
    super.key,
    required this.chats,
    required this.onChatSelected,
    this.padding = _defaultPadding,
  });

  @override
  Widget build(BuildContext context) => ListView.builder(
        padding: padding,
        shrinkWrap: true,
        itemCount: chats.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          final ChatsModelChat chat = chats[index];
          return ListTile(
            leading: CircleAvatar(
              child: chat.profilePicturePath != null
                  ? CustomCachedNetworkImage(imageUrl: chat.profilePicturePath!)
                  : const Icon(_defaultAvatarIcon),
            ),
            title: Text(
              chat.name,
              semanticsLabel: "$_prefix${chat.name}",
            ),
            subtitle: Text(chat.message),
            onTap: () => onChatSelected(chat.id),
          );
        },
      );
}
