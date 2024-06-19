abstract interface class ChatsController {
  void openChat(String chatId);
  void deleteChat();
  void filterChats(String query);
}
