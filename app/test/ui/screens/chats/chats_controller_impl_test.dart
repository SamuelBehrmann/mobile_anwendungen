import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/chats/chats_controller_impl.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockChatsBackendService mockChatsBackendService;
  late MockChatsNavigationService mockChatsNavigationService;
  setUp(
    () {
      mockChatsBackendService = MockChatsBackendService();
      mockChatsNavigationService = MockChatsNavigationService();
      when(mockChatsBackendService.getAllChats()).thenAnswer(
        (_) => Future<List<ChatsBackendServiceChat>>.value(
          <ChatsBackendServiceChat>[],
        ),
      );
    },
  );

  ChatsControllerImpl createChatsController() {
    final ChatsControllerImpl chatsController = ProviderContainer().read(
      chatsControllerImplProvider(
        backendService: mockChatsBackendService,
        navigationService: mockChatsNavigationService,
      ).notifier,
    );
    final KeepAliveLink keepAliveLink = chatsController.ref.keepAlive();
    addTearDown(keepAliveLink.close);
    return chatsController;
  }

  test('Chats controller impl build', () async {
    createChatsController();
    await Future<void>.delayed(Duration.zero);
    verify(mockChatsBackendService.getAllChats()).called(1);
  });

  test('Chats controller impl openChats ', () {
    createChatsController().openChat('id');
    verify(mockChatsNavigationService.openChat(chatId: 'id')).called(1);
  });

  test('Chats controller impl FilterChats ', () {
    final ChatsControllerImpl chatsController = createChatsController()
      ..state = const ChatsModel.data(
        chats: <ChatsModelChat>[
          ChatsModelChat(
            id: 'id1',
            name: 'name1',
            message: 'message',
            profilePicturePath: 'imageUrl',
          ),
          ChatsModelChat(
            id: 'id2',
            name: 'name2',
            message: 'message',
            profilePicturePath: 'imageUrl',
          ),
        ],
        filteredChats: <ChatsModelChat>[],
      )
      ..filterChats('name1');
    expect(
      chatsController.state,
      const ChatsModel.data(
        chats: <ChatsModelChat>[
          ChatsModelChat(
            id: 'id1',
            name: 'name1',
            message: 'message',
            profilePicturePath: 'imageUrl',
          ),
          ChatsModelChat(
            id: 'id2',
            name: 'name2',
            message: 'message',
            profilePicturePath: 'imageUrl',
          ),
        ],
        filteredChats: <ChatsModelChat>[
          ChatsModelChat(
            id: 'id1',
            name: 'name1',
            message: 'message',
            profilePicturePath: 'imageUrl',
          ),
        ],
      ),
    );
  });
}
