import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final String username;
  final Uri userAvatar;
  final Iterable<String> userTitles;
  final String message;
  final void Function(String messageId) replyCallback;

  const Message({
    super.key,
    required this.username,
    required this.userAvatar,
    this.userTitles = const <String>[],
    required this.message,
    required this.replyCallback,
  });

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildHeader(),
          _buildMessage(),
          _buildReplyButton(),
        ],
      );

  Widget _buildReplyButton() => GestureDetector(
        onTap: () {
          // TODO: Implement reply functionality with message id (possibly post id)
          replyCallback('messageId');
        },
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.reply),
            Text('Reply'),
          ],
        ),
      );

  Widget _buildMessage() => Text(message);

  Widget _buildHeader() => Builder(
        builder: (BuildContext context) => ListTile(
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(userAvatar.toString()),
          ),
          title: Text(
            username,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          subtitle: userTitles.isEmpty
              ? Text(
                  userTitles.join(', '),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onPrimaryContainer
                            .withOpacity(0.6),
                      ),
                )
              : null,
        ),
      );
}
