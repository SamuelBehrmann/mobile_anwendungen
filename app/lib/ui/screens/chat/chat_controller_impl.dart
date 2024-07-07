import 'dart:async';

import 'package:medi_support/ui/screens/chat/chat_controller.dart';
import 'package:medi_support/ui/screens/chat/chat_model.dart';
import 'package:medi_support/ui/screens/chat/services/chat_backend_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chat_controller_impl.g.dart';

@riverpod
class ChatControllerImpl extends _$ChatControllerImpl
    implements ChatController {
  StreamSubscription<ChatBackendServiceChat>? _chatStreamSubscription;

  @override
  ChatModel build({
    required String chatId,
    required ChatBackendService backendService,
  }) {
    final Stream<ChatBackendServiceChat> chatStream =
        backendService.fetchChatData(chatId);

    _chatStreamSubscription = chatStream.listen(
      (ChatBackendServiceChat chat) => state = state.copyWith(
        chatId: chat.chatId,
        activeUserId: chat.currentUserId,
        chatPartner: ChatModelPerson.fromBackendServicePerson(chat.chatPartner),
        groupedMessages: _groupMessages(
          chat.messages
              .map(
                (ChatBackendServiceMessage message) =>
                    ChatModelMessage.fromBackendServiceMessage(message),
              )
              .toList()
              .reversed
              .toList(),
        ),
      ),
    );

    ref.onDispose(() {
      _chatStreamSubscription?.cancel();
      _chatStreamSubscription = null;
    });

    return const ChatModel(
      chatId: '',
      activeUserId: '',
      chatPartner: ChatModelPerson(
        id: '',
        name: '',
        imageUrl: '',
      ),
      groupedMessages: <MapEntry<String, List<ChatModelMessage>>>[],
    );
  }

  @override
  void sendMessage(String message) {
    // Implement the send functionality
  }

  @override
  void deleteMessage(String messageId) {
    // TODO: implement deleteMessage
  }

  List<MapEntry<String, List<ChatModelMessage>>> _groupMessages(
    List<ChatModelMessage> messages,
  ) {
    if (messages.isEmpty) {
      return <MapEntry<String, List<ChatModelMessage>>>[];
    }

    List<MapEntry<String, List<ChatModelMessage>>> groupedMessages =
        List<MapEntry<String, List<ChatModelMessage>>>.empty(growable: true);
    String currentUserId = messages.first.authorId;
    MapEntry<String, List<ChatModelMessage>> currentGroup =
        MapEntry<String, List<ChatModelMessage>>(
      currentUserId,
      List<ChatModelMessage>.empty(growable: true),
    );

    for (int index = 0; index < messages.length; index++) {
      final ChatModelMessage message = messages[index];
      if (currentUserId == message.authorId) {
        currentGroup.value.add(message);
      } else {
        groupedMessages.add(currentGroup);
        currentUserId = message.authorId;
        currentGroup = MapEntry<String, List<ChatModelMessage>>(
          currentUserId,
          <ChatModelMessage>[message],
        );
      }
    }
    groupedMessages.add(currentGroup);
    return groupedMessages;
  }
}
