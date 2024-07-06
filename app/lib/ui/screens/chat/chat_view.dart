import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/chat/chat_controller.dart';
import 'package:medi_support/ui/screens/chat/chat_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';
import 'package:intl/intl.dart';

class ChatView extends StatelessWidget {
  // _buildMessageList
  static const EdgeInsets _messagePadding =
      EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0);
  static const EdgeInsets _chatListPadding = EdgeInsets.all(0);
  static const EdgeInsets _messageContentPadding = EdgeInsets.all(6.0);
  static const SizedBox _sizedBox = SizedBox(height: 8.0, width: 6);
  static const double _avatarRadius = 18;
  static const double _messageWidth = 0.75;
  static final BorderRadius _messageBorderRadius = BorderRadius.circular(12);
  // _buildSendMessageArea
  static const EdgeInsets containerPadding =
      EdgeInsets.symmetric(horizontal: 24.0);
  static const EdgeInsets textFieldPadding =
      EdgeInsets.only(bottom: 24.0, top: 8);
  static const EdgeInsets contentPadding =
      EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0);
  static final BorderRadius _buttonBorderRadius = BorderRadius.circular(30.0);

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
              child: _buildMessageList(model),
            ),
            _buildSendMessageArea(),
          ],
        ),
      );

  Widget _buildMessageList(ChatModel model) => ListView.separated(
        padding: _messagePadding,
        separatorBuilder: (_, __) => _sizedBox,
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
                maxWidth: MediaQuery.of(context).size.width * _messageWidth,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  if (!isCurrentUser)
                    CircleAvatar(
                      radius: _avatarRadius,
                      child: CustomCachedNetworkImage(
                        imageUrl: model.chatPartner.imageUrl,
                      ),
                    ),
                  _sizedBox,
                  Expanded(
                    child: ListView.separated(
                      padding: _chatListPadding,
                      separatorBuilder: (_, __) => _sizedBox,
                      reverse: true,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: message.value.length,
                      itemBuilder: (BuildContext context, int index) {
                        final ChatModelMessage msg = message.value[index];
                        return Container(
                          padding: _messageContentPadding,
                          decoration: BoxDecoration(
                            color: isCurrentUser
                                ? Theme.of(context).colorScheme.primaryContainer
                                : Theme.of(context).colorScheme.outlineVariant,
                            borderRadius: _messageBorderRadius,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(msg.content),
                              const SizedBox(height: 4),
                              Text(
                                DateFormat('h:mm a').format(msg.timestamp),
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
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
      padding: containerPadding,
      child: Container(
        padding: textFieldPadding,
        child: SizedBox(
          width: double.infinity,
          child: TextField(
            controller: messageController,
            decoration: InputDecoration(
              hintText: "Type a message",
              contentPadding: contentPadding,
              border: OutlineInputBorder(
                borderRadius: _buttonBorderRadius,
              ),
              suffixIcon: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  // Implement the send functionality
                  final String messageText = messageController.text;
                  if (messageText.isNotEmpty) {
                    controller.sendMessage(messageText);
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
