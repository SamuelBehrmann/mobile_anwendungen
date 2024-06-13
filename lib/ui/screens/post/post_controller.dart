abstract interface class PostController {
  void goBack();
  void selectMessageToReply({required String messageId});
  void submitReply({required final String message});
}
