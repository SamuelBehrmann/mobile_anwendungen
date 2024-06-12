import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';

@freezed
class PostModel with _$PostModel {
  const factory PostModel(
    PostModelPost post,
  ) = _PostModel;
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
}

@freezed
class PostModelMessage with _$PostModelMessage {
  const factory PostModelMessage({
    required final String id,
    required final String message,
    required final String title,
    required final PostModelUser author,
    required final List<PostModelMessage> replies,
  }) = _PostModelMessage;
}

@freezed
class PostModelUser with _$PostModelUser {
  const factory PostModelUser({
    required final String id,
    required final String name,
    required final Uri avatar,
    required final List<String> titles,
  }) = _PostModelUser;
}
