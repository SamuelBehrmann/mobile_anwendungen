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
  }) {
    SearchModel searchModel = const SearchModel(
      query: "",
      results: <SearchModelPost>[],
      filteredResults: <SearchModelPost>[],
    );

    return searchModel;
  }

  @override
  void goBack() {
    navigationService.goBack();
  }

  @override
  void onSearch({required String query}) async {
    if (query.isEmpty) {
      state =
          state.copyWith(filteredResults: <SearchModelPost>[], query: query);
      return;
    }

    final List<SearchModelPost> posts =
        await backendService.search(query: query).then(
              (List<SearchBackendServicePost> posts) =>
                  posts.map(SearchModelPost.fromBackendServicePost).toList(),
            );

    state = state.copyWith(results: posts);

    List<SearchModelPost> filteredResults = state.results
        .map((SearchModelPost post) {
          if (post.title.toLowerCase().contains(query.toLowerCase().trim()) ||
              post.body.toLowerCase().contains(query.toLowerCase().trim())) {
            return post;
          }
          return null;
        })
        .whereType<SearchModelPost>()
        .toList();

    state = state.copyWith(filteredResults: filteredResults, query: query);
  }

  @override
  void openPost({required String postId}) {
    navigationService.openPost(postId: postId);
  }

  @override
  void discardQuery() {
    state = state.copyWith(filteredResults: <SearchModelPost>[], query: "");
  }
}
