abstract interface class PostController {
  void goBack();
  void setSelectedMessageToReply({String? messageId});
  void submitReply({required final String message});
}
