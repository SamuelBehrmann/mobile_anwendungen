import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/screens/post/post_controller.dart';
import 'package:medi_support/ui/screens/post/post_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_text_field.dart';
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
        resizeToAvoidBottomInset: true,
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
          child: Stack(
            children: <Widget>[
              CustomScrollView(
                slivers: <Widget>[
                  SliverPadding(
                    padding: _screenPadding.copyWith(bottom: 0),
                    sliver: SliverToBoxAdapter(
                      child: _buildPost(),
                    ),
                  ),
                  SliverPadding(
                    padding: EdgeInsets.only(right: _screenPadding.right),
                    sliver: _buildReplies(),
                  ),
                ],
              ),
              if (model.selectedReplyId != null)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _buildTextInputField(),
                  ),
                ),
            ],
          ),
        ),
      );

  Widget _buildReplies() => SliverList(
        delegate: SliverChildListDelegate(
          <Widget>[
            ...model.post.replies
                .mapIndexed(
                  (int index, PostModelMessage message) =>
                      _buildReplyRekursive(message, 1),
                )
                .flatten,
          ].toList(),
        ),
      );

  Widget _buildPost() => Message(
        username: model.post.author.name,
        userAvatar: model.post.author.avatar,
        message: model.post.content,
        replyCallback: () =>
            controller.selectMessageToReply(messageId: model.post.id),
      );

  Widget _buildTextInputField() => Builder(
        builder: (BuildContext context) => CustomTextField(
          onSubmitted: (String message) {
            controller.submitReply(
              message: message,
            );
          },
        ),
      );

  List<Widget> _buildReplyRekursive(
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
                child: Builder(
                  builder: (BuildContext context) => Message(
                    username: message.author.name,
                    userAvatar: message.author.avatar,
                    message: message.message,
                    replyCallback: () =>
                        controller.selectMessageToReply(messageId: message.id),
                  ),
                ),
              ),
            ],
          ),
        ),
        ...message.replies
            .mapIndexed(
              (int index, PostModelMessage reply) =>
                  _buildReplyRekursive(reply, rekursionDepth + 1),
            )
            .flatten,
      ];
}
