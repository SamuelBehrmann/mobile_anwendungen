import 'dart:async';

import 'package:medi_support/ui/screens/chat/chat_controller.dart';
import 'package:medi_support/ui/screens/chat/chat_model.dart';
import 'package:medi_support/ui/screens/chat/services/chat_backend_service.dart';
import 'package:medi_support/ui/screens/chat/services/chat_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'chat_controller_impl.g.dart';

@riverpod
class ChatControllerImpl extends _$ChatControllerImpl
    implements ChatController {
  StreamSubscription<ChatBackendServiceChat>? _chatStreamSubscription;

  @override
  ChatModel build({
    required String chatId,
    required ChatBackendService backendService,
    required ChatNavigationService navigationService,
  }) {
    final Stream<ChatBackendServiceChat> chatStream =
        backendService.getChatDataStream(chatId);

    _chatStreamSubscription = chatStream.listen(
      (ChatBackendServiceChat chat) => state = ChatModel.data(
        chatId: chat.chatId,
        activeUserId: chat.currentUserId,
        chatPartner: ChatModelUser.fromBackendServiceUser(chat.chatPartner),
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

    return const ChatModel.loading();
  }

  @override
  void sendMessage(String content) => state.when<void>(
        data: (
          String chatId,
          String activeUserId,
          ChatModelUser chatPartner,
          List<MapEntry<String, List<ChatModelMessage>>> groupedMessages,
        ) {
          if (chatId.isNotEmpty &&
              activeUserId.isNotEmpty &&
              content.isNotEmpty) {
            final ChatBackendServiceMessage newMessage =
                ChatBackendServiceMessage(
              content: content,
              authorId: activeUserId,
              messageId: const Uuid().v4(),
              timestamp: DateTime.now(),
            );

            unawaited(
              backendService
                  .addChatMessage(chatId, newMessage)
                  .catchError((Object error) {
                navigationService.showSnackBar(
                  message:
                      'Beim Senden der Nachricht ist ein Fehler aufgetreten',
                );
              }),
            );
          }
        },
        loading: () {},
        error: (_) {},
      );

  @override
  void deleteMessage(String messageId) => state.when<void>(
        data: (String chatId, _, __, ___) => unawaited(
          backendService.deleteChatMessage(chatId, messageId).catchError(
                (_) => navigationService.showSnackBar(
                  message:
                      'Beim Löschen der Nachricht ist ein Fehler aufgetreten',
                ),
              ),
        ),
        loading: () {},
        error: (_) {},
      );

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
