abstract interface class PostController {
  void goBack();
  void setSelectedMessageToReply({required String? messageId});
  void submitReply({required final String message});
}
