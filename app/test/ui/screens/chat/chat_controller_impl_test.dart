import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/chat/chat_controller_impl.dart';
import 'package:medi_support/ui/screens/chat/chat_model.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockChatBackendService mockChatBackendService;
  late MockChatNavigationService mockChatNavigationService;
  setUp(
    () {
      mockChatBackendService = MockChatBackendService();
      mockChatNavigationService = MockChatNavigationService();
    },
  );

  ChatControllerImpl createChatController(String chatId) {
    final ChatControllerImpl chatController = ProviderContainer().read(
      chatControllerImplProvider(
        chatId: chatId,
        backendService: mockChatBackendService,
        navigationService: mockChatNavigationService,
      ).notifier,
    );
    final KeepAliveLink keepAliveLink = chatController.ref.keepAlive();
    addTearDown(keepAliveLink.close);
    return chatController;
  }

  test('chat controller impl test build', () {
    when(mockChatBackendService.getChatDataStream(any)).thenAnswer(
      (_) => const Stream.empty(),
    );
    createChatController('chatId');
    verify(mockChatBackendService.getChatDataStream('chatId')).called(1);
  });

  test('chat controller impl test send message', () {
    when(mockChatBackendService.getChatDataStream(any)).thenAnswer(
      (_) => const Stream.empty(),
    );

    createChatController('chatId')
      ..state = const ChatModel.data(
        chatId: 'chatId',
        activeUserId: 'activeUserId',
        chatPartner: ChatModelUser(
          id: 'userId',
          name: 'name',
          imageUrl: 'imageUrl',
        ),
        groupedMessages: <MapEntry<String, List<ChatModelMessage>>>[],
      )
      ..sendMessage('content');

    verify(
      mockChatBackendService.addChatMessage(any, any),
    ).called(1);
  });

  test('chat controller impl test delete message', () {
    when(mockChatBackendService.getChatDataStream(any)).thenAnswer(
      (_) => const Stream.empty(),
    );

    createChatController('chatId')
      ..state = const ChatModel.data(
        chatId: 'chatId',
        activeUserId: 'activeUserId',
        chatPartner: ChatModelUser(
          id: 'userId',
          name: 'name',
          imageUrl: 'imageUrl',
        ),
        groupedMessages: <MapEntry<String, List<ChatModelMessage>>>[],
      )
      ..deleteMessage('messageId');

    verify(
      mockChatBackendService.deleteChatMessage(any, any),
    ).called(1);
  });
}
