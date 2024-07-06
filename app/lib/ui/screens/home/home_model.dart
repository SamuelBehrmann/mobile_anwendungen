import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/ui/screens/home/services/home_backend_service.dart';

part 'home_model.freezed.dart';

@freezed
class HomeModel with _$HomeModel {
  const factory HomeModel.data({
    @Default(<HomeModelPost>[]) List<HomeModelPost> posts,
  }) = HomeModelData;
  const factory HomeModel.error({
    required String message,
  }) = HomeModelError;
  const factory HomeModel.loading() = HomeModelLoading;
}

@freezed
class HomeModelPost with _$HomeModelPost {
  const HomeModelPost._();

  const factory HomeModelPost({
    required HomeModelUser user,
    required String postId,
    required String title,
    required String body,
  }) = _HomeModelPost;

  static HomeModelPost fromBackendServicePost(HomeBackendServicePost post) =>
      HomeModelPost(
        user: HomeModelUser.fromBackendServiceUser(post.user),
        postId: post.postId,
        title: post.title,
        body: post.body,
      );
}

@freezed
class HomeModelUser with _$HomeModelUser {
  const HomeModelUser._();

  const factory HomeModelUser({
    required String id,
    required String name,
    required String avatarUrl,
    @Default(<String>[]) List<String> titles,
  }) = _HomeModelUser;

  static HomeModelUser fromBackendServiceUser(HomeBackendServiceUser user) =>
      HomeModelUser(
        id: user.userId,
        name: user.userName,
        avatarUrl: user.userAvatarUrl,
        titles: user.titles,
      );
}
