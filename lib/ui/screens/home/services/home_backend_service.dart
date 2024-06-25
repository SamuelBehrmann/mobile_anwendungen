import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_backend_service.freezed.dart';

abstract class HomeBackendService {
  Stream<List<HomeBackendServicePost>> getHomePostsStream(
      {required final int maxCount});
}

@freezed
class HomeBackendServicePost with _$HomeBackendServicePost {
  const factory HomeBackendServicePost({
    required String userId,
    required String postId,
    required String title,
    required String body,
  }) = _HomeBackendServicePost;
}
