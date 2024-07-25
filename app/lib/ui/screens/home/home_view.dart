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
        icon: const Icon(
          Icons.search,
          semanticLabel: 'Search',
        ),
        onPressed: controller.openSearch,
      );

  Widget _buildContent() => model.when(
        data: _buildData,
        error: (String message) => Center(child: Text(message)),
        loading: () => const Center(child: CircularProgressIndicator()),
      );

  Widget _buildData(List<HomeModelPost> posts) => CustomScrollView(
        slivers: <Widget>[
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            sliver: SliverList.separated(
              itemBuilder: (_, int index) {
                final HomeModelPost post = posts[index];
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
              itemCount: posts.length,
            ),
          ),
        ],
      );
}
