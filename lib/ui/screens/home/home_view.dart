import 'package:flutter/material.dart';
import 'package:medi_support/ui/widgets/message.dart';
import 'package:medi_support/ui/widgets/post_preview.dart';
import 'package:medi_support/ui/widgets/search.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: const <Widget>[
            CustomSearchBar(
              items: <String>['item1', 'item2', 'item3'],
            ),
          ],
        ),
        body: _buildContent(),
      );
}

Widget _buildContent() => CustomScrollView(
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverList(
            delegate: SliverChildListDelegate(<Widget>[
              Message(
                username: 'Name Surname',
                userAvatar: Uri.parse(
                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=3276&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
                userTitles: const <String>['title1', 'title2'],
                message:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor,Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporLorem ipsum dolor sit amet, consectetur adipiscing elit, ',
                replyCallback: (String messageId) {},
              ),
              const SizedBox(height: 24),
            ]),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverList.separated(
            itemBuilder: (_, int index) => PostPreview(
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
              postId: 'test-post-id: $index',
            ),
            separatorBuilder: (_, __) => const SizedBox(height: 16),
            itemCount: 1000,
          ),
        ),
      ],
    );
