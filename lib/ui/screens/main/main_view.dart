import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/screens/main/main_controller.dart';
import 'package:medi_support/ui/screens/main/main_controller_impl.dart';
import 'package:medi_support/ui/screens/main/main_model.dart';
import 'package:medi_support/ui/widgets/bottom_navigation.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/message.dart';
import 'package:medi_support/ui/widgets/post_preview.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MainController controller =
        ref.watch(mainControllerImplProvider.notifier);
    final MainModel model = ref.watch(mainControllerImplProvider);

    return Scaffold(
      appBar: CostumAppBar(
        title: some("Medi Support"),
        actions: <Widget>[
          _buildShuffleButton(controller, model),
        ],
      ),
      body: _buildContent(),
      bottomNavigationBar: const BottomNavigation(),
    );
  }

  Widget _buildContent() => SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
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
            Expanded(
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
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
        ),
      );

  Widget _buildShuffleButton(
    MainController controller,
    MainModel model,
  ) =>
      IconButton(
        onPressed: controller.changeColor,
        icon: const Icon(Icons.shuffle),
        color: switch (model.color) {
          MainModelColor.red => Colors.red,
          MainModelColor.green => Colors.green,
          MainModelColor.blue => Colors.blue,
        },
      );
}
