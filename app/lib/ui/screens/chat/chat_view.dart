import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/chat/chat_controller.dart';
import 'package:medi_support/ui/screens/chat/chat_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';
import 'package:intl/intl.dart';
import 'package:medi_support/ui/widgets/custom_text_field.dart';

class ChatView extends StatelessWidget {
  // _buildMessageList
  static const EdgeInsets _messagePadding =
      EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0);
  static const EdgeInsets _chatListPadding = EdgeInsets.all(0);
  static const EdgeInsets _messageContentPadding = EdgeInsets.all(6.0);
  static const SizedBox _sizedBox = SizedBox(height: 8.0, width: 6.0);
  static const double _avatarRadius = 18.0;
  static const double _messageWidth = 0.75;
  static final BorderRadius _messageBorderRadius = BorderRadius.circular(12.0);
  // _buildSendMessageArea
  static const EdgeInsets _textFieldPadding =
      EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 0.0);

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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: controller.goBack,
          ),
          title: model.map(
            data: (ChatModelData chat) => chat.chatPartner.name,
            loading: (_) => null,
            error: (_) => null,
          ),
          profilePicureUrl: model.map(
            data: (ChatModelData chat) => chat.chatPartner.imageUrl,
            loading: (_) => null,
            error: (_) => null,
          ),
        ),
        body: model.map(
          data: _buildDataState,
          loading: _buildLoadingState,
          error: _buildErrorState,
        ),
      );

  Column _buildDataState(ChatModelData data) => Column(
        children: <Widget>[
          Flexible(
            child: _buildMessageList(data),
          ),
          _buildSendMessageArea(),
        ],
      );

  Widget _buildMessageList(ChatModelData model) => ListView.separated(
        padding: _messagePadding,
        reverse: true,
        separatorBuilder: (_, __) => _sizedBox,
        itemCount: model.groupedMessages.length,
        itemBuilder: (BuildContext context, int index) {
          final MapEntry<String, List<ChatModelMessage>> message =
              model.groupedMessages.elementAt(index);
          final bool isCurrentUser = message.key == model.activeUserId;

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
                  if (!isCurrentUser) _buildAvatar(model.chatPartner.imageUrl),
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
                        return GestureDetector(
                          onLongPress: () =>
                              _showDeleteDialog(context, msg, model),
                          child: Container(
                            padding: _messageContentPadding,
                            decoration: BoxDecoration(
                              color: isCurrentUser
                                  ? Theme.of(context)
                                      .colorScheme
                                      .primaryContainer
                                  : Theme.of(context)
                                      .colorScheme
                                      .outlineVariant,
                              borderRadius: _messageBorderRadius,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  msg.content,
                                  semanticsLabel: msg.content,
                                ),
                                const SizedBox(height: 4.0),
                                Text(
                                  DateFormat('h:mm a').format(msg.timestamp),
                                  style: Theme.of(context).textTheme.labelSmall,
                                ),
                              ],
                            ),
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

  Widget _buildAvatar(String? imageUrl) => CircleAvatar(
        radius: _avatarRadius,
        child: imageUrl != null
            ? CustomCachedNetworkImage(imageUrl: imageUrl.toString())
            : const Icon(
                Icons.person_outline,
                size: _avatarRadius,
              ),
      );

  void _showDeleteDialog(
    BuildContext context,
    ChatModelMessage message,
    ChatModelData chat,
  ) {
    if (message.authorId == chat.activeUserId) {
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Delete Message'),
          content: const Text('Are you sure you want to delete this message?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                controller.deleteMessage(message.messageId);
                Navigator.of(context).pop();
              },
              child: const Text('Delete'),
            ),
          ],
        ),
      );
    }
  }

  Widget _buildSendMessageArea() => SafeArea(
        child: Padding(
          padding: _textFieldPadding,
          child: SizedBox(
            width: double.infinity,
            child: CustomTextField(
              onSubmitted: (String message) => controller.sendMessage(message),
              hint: 'Type a message',
            ),
          ),
        ),
      );

  Widget _buildLoadingState(ChatsModelLoading value) =>
      const Center(child: CircularProgressIndicator());

  Widget _buildErrorState(ChatsModelError error) => error.message != null
      ? Center(child: Text(error.message!))
      : const SizedBox();
}
