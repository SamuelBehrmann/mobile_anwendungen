import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  final String chatId;
  const ChatView({
    super.key,
    required this.chatId,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Chat with: $chatId'),
        ),
      );
}
