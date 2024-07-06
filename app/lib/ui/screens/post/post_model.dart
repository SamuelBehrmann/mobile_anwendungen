import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/ui/screens/post/services/post_backend_service.dart';

part 'post_model.freezed.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel({
    PostModelPost? post,
    String? selectedReplyId,
    required String currentUserId,
  }) = _PostModel;
}

@freezed
class PostModelPost with _$PostModelPost {
  const factory PostModelPost({
    required final String id,
    required final String title,
    required final String content,
    required final PostModelUser author,
    required final List<PostModelMessage> replies,
  }) = _PostModelPost;

  factory PostModelPost.fromBackendServicePost(
    final PostBackendServicePost post,
  ) =>
      PostModelPost(
        id: post.id,
        title: post.title,
        content: post.content,
        author: PostModelUser.fromBackendServiceUser(post.author),
        replies: post.replies
            .map(
              (PostBackendServiceMessage message) =>
                  PostModelMessage.fromBackendServiceMessage(message),
            )
            .toList(),
      );
}

@freezed
class PostModelMessage with _$PostModelMessage {
  const factory PostModelMessage({
    required final String id,
    required final String message,
    required final PostModelUser author,
    required final List<PostModelMessage> replies,
  }) = _PostModelMessage;

  factory PostModelMessage.fromBackendServiceMessage(
    final PostBackendServiceMessage message,
  ) =>
      PostModelMessage(
        id: message.id,
        message: message.message,
        author: PostModelUser.fromBackendServiceUser(message.author),
        replies: message.replies
            .map(
              (PostBackendServiceMessage reply) =>
                  PostModelMessage.fromBackendServiceMessage(reply),
            )
            .toList(),
      );
}

@freezed
class PostModelUser with _$PostModelUser {
  const factory PostModelUser({
    required final String id,
    required final String name,
    required final Uri avatar,
    required final List<String> titles,
  }) = _PostModelUser;

  factory PostModelUser.fromBackendServiceUser(
    final PostBackendServiceUser user,
  ) =>
      PostModelUser(
        id: user.id,
        name: user.name,
        avatar: user.avatar,
        titles: user.titles,
      );
}
