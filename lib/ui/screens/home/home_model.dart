import 'package:freezed_annotation/freezed_annotation.dart';

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
}
