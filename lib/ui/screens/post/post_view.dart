import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
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
          title: model.post?.title,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: controller.goBack,
          ),
        ),
        body: model.post == null ? _buildLoadingState() : _buildDataState(),
      );

  Widget _buildDataState() => Builder(
        builder: (BuildContext context) => Stack(
          children: <Widget>[
            SafeArea(
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
                    sliver: _buildReplies(),
                  ),
                ],
              ),
            ),
            if (model.selectedReplyId != null)
              Align(
                alignment: Alignment.bottomCenter,
                child: _buildTextInputField(),
              ),
          ],
        ),
      );

  Widget _buildLoadingState() =>
      const Center(child: CircularProgressIndicator());

  Widget _buildReplies() => SliverList(
        delegate: SliverChildListDelegate(
          <Widget>[
            ...model.post!.replies
                .mapIndexed(
                  (int index, PostModelMessage message) =>
                      _buildReplyRekursive(message, 1),
                )
                .flattened,
          ].toList(),
        ),
      );

  Widget _buildPost() => Message(
        username: model.post!.author.name,
        userAvatar: model.post?.author.avatar,
        message: model.post!.content,
        replyCallback: () =>
            controller.setSelectedMessageToReply(messageId: model.post!.id),
      );

  Widget _buildTextInputField() => Builder(
        builder: (BuildContext context) => Container(
          color: Theme.of(context).colorScheme.surface,
          child: SafeArea(
            child: Padding(
              // TODO: Extract
              padding: const EdgeInsets.all(8.0),
              child: CustomTextField(
                onSubmitted: (String message) {
                  controller.submitReply(
                    message: message,
                  );
                },
                onTapOutside: () =>
                    controller.setSelectedMessageToReply(messageId: null),
              ),
            ),
          ),
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
                    replyCallback: () => controller.setSelectedMessageToReply(
                      messageId: message.id,
                    ),
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
            .flattened,
      ];
}
