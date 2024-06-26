import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_backend_service.freezed.dart';

abstract interface class SearchBackendService {
  Future<List<SearchBackendServicePost>> search({required String query});
}

@freezed
class SearchBackendServicePost with _$SearchBackendServicePost {
  const factory SearchBackendServicePost({
    required String userId,
    required String postId,
    required String title,
    required String body,
  }) = _SearchBackendServicePost;
}
