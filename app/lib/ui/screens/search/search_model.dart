import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/ui/screens/search/services/search_backend_service.dart';

part 'search_model.freezed.dart';

@freezed
class SearchModel with _$SearchModel {
  const factory SearchModel({
    String? query,
    @Default(<SearchModelPost>[]) List<SearchModelPost> filteredResults,
  }) = _SearchModel;
}

@freezed
class SearchModelPost with _$SearchModelPost {
  const factory SearchModelPost({
    required final String id,
    required final String title,
    required final String body,
  }) = _SearchModelPost;

  factory SearchModelPost.fromBackendServicePost(
    final SearchBackendServicePost post,
  ) =>
      SearchModelPost(
        id: post.postId,
        title: post.title,
        body: post.body,
      );
}
