import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';

part 'chats_model.freezed.dart';

@freezed
class ChatsModel with _$ChatsModel {
  const ChatsModel._();
  const factory ChatsModel.data({
    required List<ChatsModelChat> chats,
    @Default(<ChatsModelChat>[]) List<ChatsModelChat> filteredChats,
  }) = ChatsModelData;
  const factory ChatsModel.loading() = ChatsModelLoading;
  const factory ChatsModel.error(
    String message,
  ) = ChatsModelError;

  ChatsModel mapData(
    final ChatsModelData Function(ChatsModelData data) transform,
  ) =>
      map(
        data: (final ChatsModelData data) {
          final ChatsModelData newData = transform(data);
          return ChatsModel.data(
            chats: newData.chats,
            filteredChats: newData.filteredChats,
          );
        },
        error: (ChatsModelError error) => ChatsModel.error(error.message),
        loading: (_) => const ChatsModel.loading(),
      );
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
