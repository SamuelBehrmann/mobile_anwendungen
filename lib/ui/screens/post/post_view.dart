import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/screens/post/post_controller.dart';
import 'package:medi_support/ui/screens/post/post_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/message.dart';

class PostView extends StatelessWidget {
  static const EdgeInsets _screenPadding = EdgeInsets.all(16);
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
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: _screenPadding.copyWith(bottom: 0),
              sliver: SliverToBoxAdapter(
                child: _buildPost(),
              ),
            ),
            SliverPadding(
              padding: _screenPadding.copyWith(top: 0, bottom: 0),
              sliver: SliverList.separated(
                itemCount: model.post.replies.length,
                itemBuilder: (BuildContext context, int index) => _buildMessage(
                  model.post.replies[index],
                ),
                separatorBuilder: (_, __) => const SizedBox(height: 8),
              ),
            ),
          ],
        ),
      );

  Widget _buildPost() => Message(
        username: model.post.author.name,
        userAvatar: model.post.author.avatar,
        message: model.post.content,
        replyCallback: (String message) => controller.reply(
          id: model.post.id,
          message: message,
        ),
      );

  Widget _buildMessage(PostModelMessage message) => Builder(
        builder: (BuildContext context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Message(
              username: message.author.name,
              userAvatar: message.author.avatar,
              message: message.message,
              replyCallback: (String reply) => controller.reply(
                id: message.id,
                message: reply,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(left: 16),
              itemCount: message.replies.length,
              itemBuilder: (BuildContext context, int index) =>
                  _buildMessage(message.replies[index]),
            ),
          ],
        ),
      );
}
