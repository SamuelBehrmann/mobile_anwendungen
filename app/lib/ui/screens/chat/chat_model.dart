import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/ui/screens/chat/services/chat_backend_service.dart';

part'chat_model.freezed.dart';

@freezed
class ChatModel with _$ChatModel {
  const factory ChatModel({
    required String chatId,
    required String activeUserId,
    required ChatModelPerson chatPartner,
    required List<MapEntry<String, List<ChatModelMessage>>> groupedMessages,
  }) = _ChatsModel;
}

@freezed
class ChatModelPerson with _$ChatModelPerson {
  const factory ChatModelPerson({
    required String id,
    required String name,
    required String imageUrl,
  }) = _ChatModelPerson;

  factory ChatModelPerson.fromBackendServicePerson(ChatBackendServicePerson person) =>
      ChatModelPerson(
        id: person.id,
        name: person.name,
        imageUrl: person.imageUrl,
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

  factory ChatModelMessage.fromBackendServiceMessage(ChatBackendServiceMessage message) =>
      ChatModelMessage(
        content: message.content,
        messageId: message.messageId,
        authorId: message.authorId,
        timestamp: message.timestamp,
      );
}