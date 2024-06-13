import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/screens/post/post_controller.dart';
import 'package:medi_support/ui/screens/post/post_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/message.dart';

class PostView extends StatelessWidget {
  static const EdgeInsets _screenPadding = EdgeInsets.all(16);
  static const double _verticalDividerWidth = 32;

  final PostController controller;
  final PostModel model;

  const PostView({
    super.key,
    required this.controller,
    required this.model,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          title: some(model.post.title),
          leading: some(
            IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: controller.goBack,
            ),
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: _screenPadding.copyWith(bottom: 0),
                sliver: SliverToBoxAdapter(
                  child: _buildPost(),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.only(right: _screenPadding.right),
                sliver: _buildMessages(),
              ),
            ],
          ),
        ),
      );

  Widget _buildMessages() => SliverList(
        delegate: SliverChildListDelegate(
          <Widget>[
            ...model.post.replies
                .mapIndexed(
                  (int index, PostModelMessage message) =>
                      _buildMessageRekursive(message, 1),
                )
                .flatten,
          ].toList(),
        ),
      );

  Widget _buildPost() => Message(
        username: model.post.author.name,
        userAvatar: model.post.author.avatar,
        message: model.post.content,
        replyCallback: () => controller.reply(
          id: model.post.id,
          message: 'message',
        ),
      );

  List<Widget> _buildMessageRekursive(
    PostModelMessage message,
    int rekursionDepth,
  ) =>
      <Widget>[
        IntrinsicHeight(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ...List<Widget>.generate(
                rekursionDepth,
                (_) => Builder(
                  builder: (BuildContext context) => VerticalDivider(
                    width: _verticalDividerWidth,
                    color: Theme.of(context)
                        .colorScheme
                        .onPrimaryContainer
                        .withOpacity(0.16),
                  ),
                ),
              ),
              Expanded(
                child: Message(
                  username: message.author.name,
                  userAvatar: message.author.avatar,
                  message: message.message,
                  replyCallback: () => controller.reply(
                    id: message.id,
                    message: 'message',
                  ),
                ),
              ),
            ],
          ),
        ),
        ...message.replies
            .mapIndexed(
              (int index, PostModelMessage reply) =>
                  _buildMessageRekursive(reply, rekursionDepth + 1),
            )
            .flatten,
      ];
}
