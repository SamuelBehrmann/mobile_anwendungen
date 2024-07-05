import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_backend_service.freezed.dart';

abstract interface class PostBackendService {
  Stream<PostBackendServicePost> getPostStream({
    required final String postId,
  });

  Future<void> submitReply({
    required final String postId,
    required final String message,
    required final String replyToMessageId,
  });
}

@freezed
class PostBackendServicePost with _$PostBackendServicePost {
  const factory PostBackendServicePost({
    required final String id,
    required final String title,
    required final String content,
    required final PostBackendServiceUser author,
    required final List<PostBackendServiceMessage> replies,
  }) = _PostBackendServicePost;
}

@freezed
class PostBackendServiceUser with _$PostBackendServiceUser {
  const factory PostBackendServiceUser({
    required final String id,
    required final String name,
    required final Uri avatar,
    required final List<String> titles,
  }) = _PostBackendServiceUser;
}

@freezed
class PostBackendServiceMessage with _$PostBackendServiceMessage {
  const factory PostBackendServiceMessage({
    required final String id,
    required final String message,
    required final PostBackendServiceUser author,
    required final List<PostBackendServiceMessage> replies,
  }) = __PostBackendServiceMessage;
}
