import 'dart:async';

import 'package:medi_support/ui/screens/post/post_controller.dart';
import 'package:medi_support/ui/screens/post/post_model.dart';
import 'package:medi_support/ui/screens/post/services/post_backend_service.dart';
import 'package:medi_support/ui/screens/post/services/post_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_controller_impl.g.dart';

@riverpod
class PostControllerImpl extends _$PostControllerImpl
    implements PostController {
  StreamSubscription<PostModelPost>? _postStreamSubscription;

  @override
  PostModel build({
    required PostNavigationService navigationService,
    required PostBackendService backendService,
    required final String postId,
  }) {
    final Stream<PostBackendServicePost> postStream =
        backendService.getPostStream(postId: postId);

    _postStreamSubscription = postStream
        .map(PostModelPost.fromBackendServicePost)
        .listen((PostModelPost post) => state = state.copyWith(post: post));

    ref.onDispose(() {
      _postStreamSubscription?.cancel();
      _postStreamSubscription = null;
    });

    return const PostModel(
      // TODO: fetch from auth
      currentUserId: 'currentUserId',
    );
  }

  @override
  void goBack() => navigationService.goBack();

  @override
  void setSelectedMessageToReply({String? messageId}) =>
      state = state.copyWith(selectedReplyId: messageId);

  @override
  void submitReply({
    required String message,
  }) {
    if (state.selectedReplyId == null || state.post == null) {
      return;
    }
    unawaited(
      backendService
          .submitReply(
            postId: state.post!.id,
            message: message,
            replyToMessageId: state.selectedReplyId!,
          )
          .then((_) => state = state.copyWith(selectedReplyId: null)),
    );
  }
}
