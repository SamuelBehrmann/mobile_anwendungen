import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/home/home_controller.dart';
import 'package:medi_support/ui/screens/home/home_model.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/post_preview.dart';

class HomeView extends StatelessWidget {
  final HomeModel model;
  final HomeController controller;

  const HomeView({
    required this.model,
    required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CustomAppBar(
          title: 'Home',
          actions: <Widget>[_buildSearchButton()],
        ),
        body: _buildContent(),
      );

  Widget _buildSearchButton() => IconButton(
        icon: const Icon(Icons.search),
        onPressed: controller.openSearch,
      );

  Widget _buildContent() => CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            sliver: SliverList.separated(
              itemBuilder: (_, int index) {
                final HomeModelPost post = model.posts[index];
                return PostPreview(
                  onPostTap: (String postId) =>
                      controller.openPost(postId: postId),
                  title: post.title,
                  content: post.body,
                  account: PostPreviewAccount(
                    name: post.user.name,
                    titles: post.user.titles,
                    imageUrl: Uri.parse(post.user.avatarUrl),
                  ),
                  postId: post.postId,
                );
              },
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemCount: model.posts.length,
            ),
          ),
        ],
      );
}
