import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/ui/screens/home/services/home_backend_service.dart';

part 'home_model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel({
    @Default(<HomeModelPost>[]) List<HomeModelPost> posts,
  }) = _HomeModel;
}

@freezed
class HomeModelPost with _$HomeModelPost {
  const factory HomeModelPost({
    //TODO: fille if we have users
    required String userId,
    required String postId,
    required String title,
    required String body,
  }) = _HomeModelPost;

  static HomeModelPost fromBackendServicePost(HomeBackendServicePost post) =>
      HomeModelPost(
        userId: post.userId,
        postId: post.postId,
        title: post.title,
        body: post.body,
      );
}
