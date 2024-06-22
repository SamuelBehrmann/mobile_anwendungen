import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/chat/chat_controller.dart';
import 'package:medi_support/ui/screens/chat/chat_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';

// TODO: scroll to last chat on open and on new message
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

  Widget _buildMessageList(ChatModel model) => ListView.builder(
        itemCount: model.messages.length,
        itemBuilder: (BuildContext context, int index) {
          final ChatModelMessage message = model.messages[index];
          final bool isCurrentUser = message.authorId == model.chatPartner.id;
          // Determine if this is the last message from the chat partner in a sequence
          final bool isLastMessageFromPartner =
              index + 1 == model.messages.length ||
                  model.messages[index + 1].authorId != message.authorId;

          return Align(
            alignment:
                isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                if (!isCurrentUser)
                  if (isLastMessageFromPartner)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 18,
                        child: CustomCachedNetworkImage(
                          imageUrl: model.chatPartner.imageUrl,
                        ),
                      ),
                    )
                  else
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 8.0,
                    ),
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.70,
                    ),
                    decoration: BoxDecoration(
                      color: isCurrentUser
                          ? Theme.of(context).colorScheme.primaryContainer
                          : Theme.of(context).colorScheme.outlineVariant,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      message.content,
                    ),
                  ),
                ),
              ],
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
