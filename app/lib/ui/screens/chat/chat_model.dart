import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/ui/screens/chat/services/chat_backend_service.dart';

part 'chat_model.freezed.dart';

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel.data({
    required String chatId,
    required String activeUserId,
    required ChatModelUser chatPartner,
    required List<MapEntry<String, List<ChatModelMessage>>> groupedMessages,
  }) = ChatModelData;

  const factory ChatModel.loading() = ChatsModelLoading;
  const factory ChatModel.error({
    required String? message,
  }) = ChatsModelError;
}

@freezed
class ChatModelUser with _$ChatModelUser {
  const factory ChatModelUser({
    required String id,
    required String name,
    required String? imageUrl,
  }) = _ChatModelUser;

  factory ChatModelUser.fromBackendServiceUser(ChatBackendServiceUser user) =>
      ChatModelUser(
        id: user.id,
        name: user.name,
        imageUrl: user.imageUrl,
      );
}

@freezed
class ChatModelMessage with _$ChatModelMessage {
  const factory ChatModelMessage({
    required String content,
    required String messageId,
    required String authorId,
    required DateTime timestamp,
  }) = _ChatModelMessage;

  factory ChatModelMessage.fromBackendServiceMessage(
    ChatBackendServiceMessage message,
  ) =>
      ChatModelMessage(
        content: message.content,
        messageId: message.messageId,
        authorId: message.authorId,
        timestamp: message.timestamp,
      );
}
