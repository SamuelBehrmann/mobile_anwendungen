import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/chat/chat_model.dart';

class ChatView extends StatelessWidget {
  final ChatModel model;

  const ChatView({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    const String currentUserId = 'person1';

    return Scaffold(
      appBar: AppBar(
        title: Text('Chat with: ${model.chatPartner.name}'),
      ),
      body: ListView.builder(
        itemCount: model.messages.length,
        itemBuilder: (BuildContext context, int index) {
          final ChatModelMessage message = model.messages[index];
          final bool isCurrentUser = message.authorId == currentUserId;
          return Align(
            alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              decoration: BoxDecoration(
                color: isCurrentUser ? Colors.blue[100] : Colors.grey[300],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(message.content),
            ),
          );
        },
      ),
    );
  }
}