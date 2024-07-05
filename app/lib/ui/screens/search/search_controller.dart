abstract interface class SearchController {
  void openPost({required String postId});
  void onSearch({required String query});
  void discardQuery();
  void goBack();
}
