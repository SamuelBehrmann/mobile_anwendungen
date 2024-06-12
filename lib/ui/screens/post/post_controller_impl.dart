import 'package:medi_support/ui/screens/post/post_controller.dart';
import 'package:medi_support/ui/screens/post/post_model.dart';
import 'package:medi_support/ui/screens/post/services/post_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_controller_impl.g.dart';

@riverpod
class PostControllerImpl extends _$PostControllerImpl
    implements PostController {
  @override
  PostModel build({
    required PostNavigationService navigationService,
    required final String postId,
  }) =>
      // TODO: Call backend with postId to get post data
      PostModel(
        PostModelPost(
          id: postId,
          title: 'Post Title: $postId',
          content: 'Post Content',
          author: PostModelUser(
            name: 'Author Name',
            id: 'Author ID',
            titles: <String>['Author Title'],
            avatar: Uri.parse(
              'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=3276&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
          replies: <PostModelMessage>[
            PostModelMessage(
              id: 'Message ID',
              message: 'Message Content',
              title: 'Message Title',
              author: PostModelUser(
                name: 'Author Name',
                id: 'Author ID',
                titles: <String>['Author Title'],
                avatar: Uri.parse(
                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=3276&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                ),
              ),
              replies: <PostModelMessage>[
                PostModelMessage(
                  id: 'Message ID',
                  message: 'Message Content',
                  title: 'Message Title',
                  author: PostModelUser(
                    name: 'Author Name',
                    id: 'Author ID',
                    titles: <String>['Author Title'],
                    avatar: Uri.parse(
                      'https://images.unsplash.com/photo-1534528741775-53994a69daeb?q=80&w=3276&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                  replies: <PostModelMessage>[],
                ),
              ],
            ),
          ],
        ),
      );

  @override
  void goBack() => navigationService.goBack();

  @override
  void reply({required String id, required String message}) =>
      // TODO: Call backend with current userId, postId/messageId, and message
      // Controller listens to the backend and updates when the reply is successful
      state = state.copyWith(
        post: state.post.copyWith(
          replies: state.post.replies
            ..add(
              PostModelMessage(
                id: 'Reply ID',
                message: message,
                title: 'Reply Title',
                author: PostModelUser(
                  avatar: Uri.parse('https://example.com/avatar.png'),
                  name: 'Author Name',
                  id: 'Author ID',
                  titles: <String>['Author Title'],
                ),
                replies: <PostModelMessage>[],
              ),
            ),
        ),
      );
}
