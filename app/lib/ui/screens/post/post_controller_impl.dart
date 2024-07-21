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

    _postStreamSubscription =
        postStream.map(PostModelPost.fromBackendServicePost).listen(
              (PostModelPost post) => state = PostModel.data(post: post),
            );

    ref.onDispose(() {
      _postStreamSubscription?.cancel();
      _postStreamSubscription = null;
    });

    return const PostModel.loading();
  }

  @override
  void goBack() => navigationService.goBack();

  @override
  void setSelectedMessageToReply({String? messageId}) => state = state.mapData(
        (PostModelData data) => data.copyWith(selectedReplyId: messageId),
      );

  @override
  void submitReply({
    required String message,
  }) =>
      state.when(
        data: (PostModelPost? post, String? selectedReplyId) =>
            post == null || selectedReplyId == null
                ? navigationService.showSnackBar(
                    message:
                        'Stell sicher das du einen Post und eine Nachricht ausgewählt hast',
                  )
                : unawaited(
                    backendService
                        .submitReply(
                          postId: post.id,
                          message: message,
                          replyToMessageId: selectedReplyId,
                        )
                        .then<void>(
                          (_) => state = state.mapData(
                            (PostModelData data) =>
                                data.copyWith(selectedReplyId: null),
                          ),
                        )
                        .catchError(
                          (_, __) => navigationService.showSnackBar(
                            message: 'Failed to submit reply',
                          ),
                        ),
                  ),
        error: (_) => null,
        loading: () => null,
      );
}
