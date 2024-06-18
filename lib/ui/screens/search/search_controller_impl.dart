import 'package:medi_support/ui/screens/search/search_controller.dart';
import 'package:medi_support/ui/screens/search/search_model.dart';
import 'package:medi_support/ui/screens/search/services/search_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_controller_impl.g.dart';

@riverpod
class SearchControllerImpl extends _$SearchControllerImpl
    implements SearchController {
  @override
  SearchModel build({required SearchNavigationService navigationService}) {
    SearchModel searchModel = const SearchModel(
      query: "",
      searchResults: <String>[
        "test1",
        "test2",
        "test3",
        "test4",
        "test5",
        "home",
      ],
      filteredResults: <String>[],
    );

    return searchModel;
  }

  @override
  void goBack() {
    navigationService.goBack();
  }

  @override
  void onSearch({required String query}) {
    if (query.isEmpty) {
      state = state.copyWith(filteredResults: <String>[], query: query);
      return;
    }
    List<String> filteredResults = state.searchResults
        .where(
          (String item) => item.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();
    state = state.copyWith(filteredResults: filteredResults, query: query);
  }

  @override
  void openPost({required String postId}) {
    navigationService.openPost(postId: postId);
  }

  @override
  void discardQuery() {
    state = state.copyWith(filteredResults: <String>[], query: "");
  }
}
