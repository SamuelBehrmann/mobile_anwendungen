import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          title:  some('Chats'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.chat_rounded),
              onPressed: () {},
            ),
          ],
        ),
      );
}
