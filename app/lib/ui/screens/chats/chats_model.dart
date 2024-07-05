import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';

part 'chats_model.freezed.dart';

@freezed
class ChatsModel with _$ChatsModel {
  const factory ChatsModel({
    required List<ChatsModelChat> chats,
    @Default(<ChatsModelChat>[]) List<ChatsModelChat> filteredChats,
  }) = _ChatsModel;
}

@freezed
class ChatsModelChat with _$ChatsModelChat {
  const factory ChatsModelChat({
    required String id,
    required String name,
    required String message,
    String? profilePicturePath,
  }) = _ChatsModelChat;

  factory ChatsModelChat.fromBackendServiceChat(ChatsBackendServiceChat chat) =>
      ChatsModelChat(
        id: chat.id,
        name: chat.name,
        message: chat.message,
        profilePicturePath: chat.profilePicturePath,
      );
}
