import 'package:medi_support/ui/screens/chats/chats_model.dart';

abstract interface class ChatsController {
  void openChat(String chatId);
  void deleteChat();
  List<SingleChat> filterChats(String query);
}