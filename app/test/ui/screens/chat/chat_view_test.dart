import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/chat/chat_controller.dart';
import 'package:medi_support/ui/screens/chat/chat_model.dart';
import 'package:medi_support/ui/screens/chat/chat_view.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

void main() {
  late final ChatController controller;

  ChatModel model = ChatModel.data(
    groupedMessages: <MapEntry<String, List<ChatModelMessage>>>[
      MapEntry<String, List<ChatModelMessage>>(
        '2021-10-10',
        <ChatModelMessage>[
          ChatModelMessage(
            content: 'test',
            messageId: 'id',
            authorId: 'testid',
            timestamp: DateTime.now(),
          ),
        ],
      ),
    ],
    chatId: '',
    activeUserId: '',
    chatPartner: const ChatModelUser(
      id: 'id',
      name: 'tester',
      imageUrl: '',
    ),
  );

  setUp(() {
    controller = MockChatController();
  });

  testWidgets('CustomAppBar renders correctly with buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChatView(
          controller: controller,
          model: model,
        ),
      ),
    );

    expect(find.byType(CustomAppBar), findsOneWidget);
  });

  testWidgets('MessageList is rendered correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChatView(
          controller: controller,
          model: model,
        ),
      ),
    );

    // wtf httpclient sam
    expect(find.byType(ListView), findsOneWidget);
  });

  testWidgets('SendMessageArea renders correctly and is working',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChatView(
          controller: controller,
          model: model,
        ),
      ),
    );

    TextField textField =
        tester.widget<TextField>(find.byType(TextField).first);

    expect(find.byType(TextField), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'test');
    await tester.tap(find.byIcon(Icons.send));

    verify(controller.sendMessage('test')).called(1);
  });
}
