import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_backend_service.freezed.dart';

abstract class ChatBackendService {
  Stream<ChatBackendServiceChat> fetchChatData(String chatId);
}

@freezed
class ChatBackendServiceChat with _$ChatBackendServiceChat {
  const factory ChatBackendServiceChat({
    required String chatId,
    required ChatBackendServicePerson chatPartner,
    required List<ChatBackendServiceMessage> messages,
  }) = _ChatBackendServiceChat;
}

@freezed
class ChatBackendServicePerson with _$ChatBackendServicePerson {
  const factory ChatBackendServicePerson({
    required String id,
    required String name,
    required String imageUrl,
  }) = _ChatBackendServicePerson;
}

@freezed
class ChatBackendServiceMessage with _$ChatBackendServiceMessage {
  const factory ChatBackendServiceMessage({
    required String content,
    required String authorId,
    required String messageId,
  }) = _ChatBackendServiceMessage;
}