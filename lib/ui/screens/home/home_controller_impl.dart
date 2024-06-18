import 'dart:async';

import 'package:medi_support/ui/screens/home/home_controller.dart';
import 'package:medi_support/ui/screens/home/home_model.dart';
import 'package:medi_support/ui/screens/home/services/home_backend_service.dart';
import 'package:medi_support/ui/screens/home/services/home_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_controller_impl.g.dart';

@riverpod
class HomeControllerImpl extends _$HomeControllerImpl
    implements HomeController {
  @override
  HomeModel build({
    required HomeNavigationService navigationService,
    required HomeBackendService backendService,
  }) {
    const HomeModel model = HomeModel(posts: <HomeModelPost>[]);
    scheduleMicrotask(
      () => backendService.fetchPosts().then((List<HomeModelPost> posts) {
        state = state.copyWith(posts: posts);
      }),
    );
    return model;
  }

  @override
  void openSearch() => navigationService.openSearch();

  @override
  void openPost({required String postId}) =>
      navigationService.openPost(postId: postId);
}
