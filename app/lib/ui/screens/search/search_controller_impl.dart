import 'dart:async';

import 'package:medi_support/ui/screens/search/search_controller.dart';
import 'package:medi_support/ui/screens/search/search_model.dart';
import 'package:medi_support/ui/screens/search/services/search_backend_service.dart';
import 'package:medi_support/ui/screens/search/services/search_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller_impl.g.dart';

@riverpod
class SearchControllerImpl extends _$SearchControllerImpl
    implements SearchController {
  @override
  SearchModel build({
    required SearchNavigationService navigationService,
    required SearchBackendService backendService,
  }) =>
      const SearchModel();

  @override
  void goBack() {
    navigationService.goBack();
  }

  @override
  void onSearch({required String query}) {
    if (query.isEmpty) {
      state = state.copyWith(filteredResults: <SearchModelPost>[], query: null);
      return;
    }
    state = state.copyWith(query: query);
    unawaited(
      backendService
          .search(query: query)
          .then(
            (List<SearchBackendServicePost> posts) =>
                posts.map(SearchModelPost.fromBackendServicePost).toList(),
          )
          .then<void>(
            (List<SearchModelPost> posts) => state = state.copyWith(
              filteredResults: posts
                  .map((SearchModelPost post) {
                    if (post.title
                            .toLowerCase()
                            .contains(query.toLowerCase().trim()) ||
                        post.body
                            .toLowerCase()
                            .contains(query.toLowerCase().trim())) {
                      return post;
                    }
                    return null;
                  })
                  .whereType<SearchModelPost>()
                  .toList(),
            ),
          )
          .catchError(
            (_) => navigationService.showSnackBar(
              message: 'Während der Suche ist ein Fehler aufgetreten',
            ),
          ),
    );
  }

  @override
  void openPost({required String postId}) =>
      navigationService.openPost(postId: postId);

  @override
  void discardQuery() =>
      state = state.copyWith(filteredResults: <SearchModelPost>[], query: null);
}
