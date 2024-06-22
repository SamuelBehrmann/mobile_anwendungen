import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/chat/chat_controller.dart';
import 'package:medi_support/ui/screens/chat/chat_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';

// TODO: implement send message functionality
// TODO: clean up

class ChatView extends StatelessWidget {
  final ChatModel model;
  final ChatController controller;

  const ChatView({
    super.key,
    required this.model,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          title: model.chatPartner.name,
          profilePicureUrl: model.chatPartner.imageUrl,
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: _buildMessageList(
                model,
              ),
            ),
            _buildSendMessageArea(),
          ],
        ),
      );

  Widget _buildMessageList(ChatModel model) => ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        separatorBuilder: (_, __) => const SizedBox(height: 8.0),
        reverse: true,
        itemCount: model.groupedMessages.length,
        itemBuilder: (BuildContext context, int index) {
          final MapEntry<String, List<ChatModelMessage>> message =
              model.groupedMessages.elementAt(index);
          final bool isCurrentUser = message.key == model.chatPartner.id;

          return Align(
            alignment:
                isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.75,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  if (!isCurrentUser)
                    CircleAvatar(
                      radius: 18,
                      child: CustomCachedNetworkImage(
                        imageUrl: model.chatPartner.imageUrl,
                      ),
                    ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.all(0),
                      separatorBuilder: (_, __) => const SizedBox(height: 8.0),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: message.value.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                        padding: const EdgeInsets.all(6.0),
                        decoration: BoxDecoration(
                          color: isCurrentUser
                              ? Theme.of(context).colorScheme.primaryContainer
                              : Theme.of(context).colorScheme.outlineVariant,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          message.value[index].content,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );

  Widget _buildSendMessageArea() {
    final TextEditingController messageController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        padding: const EdgeInsets.only(bottom: 24.0, top: 8),
        child: SizedBox(
          width: double.infinity,
          child: TextField(
            controller: messageController,
            decoration: InputDecoration(
              hintText: "Type a message",
              contentPadding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  // Implement the send functionality
                  final String messageText = messageController.text;
                  if (messageText.isNotEmpty) {
                    // Send message logic here
                    messageController
                        .clear(); // Clear the TextField after sending
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
