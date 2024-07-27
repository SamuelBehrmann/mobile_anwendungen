import 'package:flutter/material.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';

class Message extends StatelessWidget {
  final String username;
  final Uri? userAvatar;
  final Iterable<String> userTitles;
  final String message;
  final void Function() replyCallback;

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
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: _buildReplyButton(),
          ),
        ],
      );

  Widget _buildReplyButton() => GestureDetector(
        onTap: replyCallback,
        child: const Icon(
          Icons.reply,
          size: 16,
          semanticLabel: 'Reply',
        ),
      );

  Widget _buildMessage() => Text(message);

  Widget _buildHeader() => Builder(
        builder: (BuildContext context) => ListTile(
          visualDensity: VisualDensity.compact,
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            child: userAvatar != null
                ? CustomCachedNetworkImage(imageUrl: userAvatar!.toString())
                : const Icon(Icons.person_outline),
          ),
          title: Text(
            username,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          subtitle: userTitles.isNotEmpty
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
