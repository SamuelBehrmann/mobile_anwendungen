abstract interface class SearchNavigationService {
  void openPost({required String postId});
  void goBack();
  void showSnackBar({required String message});
}
