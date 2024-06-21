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
        chatPartner: ChatModelPerson.fromBackendServicePerson(chat.chatPartner),
        messages: chat.messages
            .map(ChatModelMessage.fromBackendServiceMessage)
            .toList(),
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
      messages: <ChatModelMessage>[],
    );
  }

  @override
  void sendMessage(String message) {
    state = state.copyWith(
      messages: <ChatModelMessage>[
        ...state.messages,
        ChatModelMessage(
          content: message,
          messageId: '1',
          authorId: '1',
        ),
      ],
    );
  }

  @override
  void deleteMessage(String messageId) {
    // TODO: implement deleteMessage
  }
}
