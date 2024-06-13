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
        currentUserId: 'Current_user_id',
        selectedReplyId: null,
        post: PostModelPost(
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
          replies: <PostModelMessage>[],
        ),
      );

  @override
  void goBack() => navigationService.goBack();

  @override
  void setSelectedMessageToReply({required String? messageId}) =>
      state = state.copyWith(
        selectedReplyId: messageId,
      );

  @override
  void submitReply({
    required String message,
  }) {
    // TODO: Das sollte alles backend logik sein grob
    if (state.selectedReplyId == null) {
      return;
    }
    final String messageId = state.selectedReplyId!;

    PostModelMessage newReply = PostModelMessage(
      author: PostModelUser(
        id: state.currentUserId,
        name: 'name',
        avatar: Uri(),
        titles: <String>[],
      ),
      id: 'newId',
      message: message,
      replies: <PostModelMessage>[],
    );

    PostModelMessage findMessageAndAppendReply(PostModelMessage msg) {
      if (msg.id == messageId) {
        msg.replies.add(newReply);
        return msg;
      }

      msg.replies.map(findMessageAndAppendReply);

      return msg;
    }

    if (messageId == state.post.id) {
      state = state.copyWith(
        post: state.post.copyWith(
          replies: <PostModelMessage>[
            ...state.post.replies,
            newReply,
          ],
        ),
      );
    } else {
      state = state.copyWith(
        post: state.post.copyWith(
          replies: state.post.replies.map(findMessageAndAppendReply).toList(),
        ),
      );
    }
    state = state.copyWith(selectedReplyId: null);
  }
}
