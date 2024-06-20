import 'package:flutter/material.dart';
import 'package:medi_support/ui/screens/home/home_controller.dart';
import 'package:medi_support/ui/screens/home/home_model.dart';
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
        appBar: AppBar(
          title: const Text('Home'),
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
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverList.separated(
              itemBuilder: (_, int index) => PostPreview(
                onPostTap: (String postId) =>
                    controller.openPost(postId: postId),
                title: 'Post Title',
                content:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ... Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor',
                account: PostPreviewAccount(
                  name: 'Account Name',
                  titles: <String>['Title 1', 'Title 2'],
                  imageUrl: Uri.parse(
                    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=3276&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                ),
                postId: 'aHQamzqK1eSG9mV3rw4A',
              ),
              separatorBuilder: (_, __) => const SizedBox(height: 16),
              itemCount: 1000,
            ),
          ),
        ],
      );
}
