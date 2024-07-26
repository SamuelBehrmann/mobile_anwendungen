abstract interface class ChatController {
  void sendMessage(String message);
  void deleteMessage(String messageId);
  void goBack();
}
