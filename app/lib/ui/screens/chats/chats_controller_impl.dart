import 'dart:async';

import 'package:medi_support/ui/screens/chats/chats_controller.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';
import 'package:medi_support/ui/screens/chats/services/chats_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'chats_controller_impl.g.dart';

@riverpod
class ChatsControllerImpl extends _$ChatsControllerImpl
    implements ChatsController {
  @override
  ChatsModel build({
    required ChatsNavigationService navigationService,
    required ChatsBackendService backendService,
  }) {
    scheduleMicrotask(
      () => backendService
          //TODO: Change the parameter to the actual user id
          .getAllChats('person1')
          .then((List<ChatsBackendServiceChat> chats) {
        state = ChatsModel.data(
          chats: chats.map(ChatsModelChat.fromBackendServiceChat).toList(),
          filteredChats:
              chats.map(ChatsModelChat.fromBackendServiceChat).toList(),
        );
      }),
    );

    return const ChatsModel.loading();
  }

  @override
  void openChat(String id) {
    navigationService.openChat(chatId: id);
  }

  @override
  void deleteChat() {}

  @override
  void filterChats(String query) {
    state = state.mapData((ChatsModelData data) {
      List<ChatsModelChat> currentChats = data.chats;
      if (query.isNotEmpty) {
        currentChats = currentChats
            .where(
              (ChatsModelChat chat) =>
                  chat.name.toLowerCase().contains(query.toLowerCase()) ||
                  chat.message.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
      }
      return ChatsModelData(chats: data.chats, filteredChats: currentChats);
    });
  }
}
