import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_post_model.freezed.dart';

@freezed
class CreatePostModel with _$CreatePostModel {
  const factory CreatePostModel({
    required String? title,
    required String? body,
  }) = _CreatePostModel;
}
