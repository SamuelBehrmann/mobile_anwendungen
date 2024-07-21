import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_backend_service.freezed.dart';

abstract class ChatBackendService {
  Stream<ChatBackendServiceChat> getChatDataStream(String chatId);
  Future<void> addChatMessage(String chatId, ChatBackendServiceMessage message);
  Future<void> deleteChatMessage(String chatId, String messageId);
  Future<ChatBackendServiceUser> getCurrentUser();
}

@freezed
class ChatBackendServiceChat with _$ChatBackendServiceChat {
  const factory ChatBackendServiceChat({
    required String chatId,
    required String currentUserId,
    required ChatBackendServiceUser chatPartner,
    required List<ChatBackendServiceMessage> messages,
  }) = _ChatBackendServiceChat;
}

@freezed
class ChatBackendServiceUser with _$ChatBackendServiceUser {
  const factory ChatBackendServiceUser({
    required String id,
    required String name,
    required String? imageUrl,
  }) = _ChatBackendServiceUser;
}

@freezed
class ChatBackendServiceMessage with _$ChatBackendServiceMessage {
  const factory ChatBackendServiceMessage({
    required String content,
    required String authorId,
    required String messageId,
    required DateTime timestamp,
  }) = _ChatBackendServiceMessage;
}
