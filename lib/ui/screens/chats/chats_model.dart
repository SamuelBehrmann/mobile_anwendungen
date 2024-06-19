import 'package:freezed_annotation/freezed_annotation.dart';

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
    required String name,
    required String message,
    String? profilePicturePath,
  }) = _ChatsModelChat;
}
