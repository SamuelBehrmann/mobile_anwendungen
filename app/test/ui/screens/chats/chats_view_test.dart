import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/chats/chats_controller.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/screens/chats/chats_view.dart';
import 'package:medi_support/ui/screens/chats/widgets/chats_list.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_search_bar.dart';

import '../../../mocks.mocks.dart';

void main() {
  late ChatsController controller;

  ChatsModel model = const ChatsModel.data(
    chats: <ChatsModelChat>[
      ChatsModelChat(
        id: 'id',
        name: 'name',
        message: 'test',
        profilePicturePath: 'www.google.de',
      ),
    ],
    filteredChats: <ChatsModelChat>[
      ChatsModelChat(
        id: 'id',
        name: 'name',
        message: 'test',
        profilePicturePath: 'www.google.de',
      ),
    ],
  );

  setUp(() {
    controller = MockChatsController();
  });

  testWidgets('CustomAppBar renders correctly with buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChatsView(
          controller: controller,
          model: model,
        ),
      ),
    );

    CustomAppBar customAppBar =
        tester.widget<CustomAppBar>(find.byType(CustomAppBar).first);

    expect(find.byType(CustomAppBar), findsOneWidget);
    expect(customAppBar.title, 'Chats');
  });

  testWidgets('Searchbar is rendered correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChatsView(
          controller: controller,
          model: model,
        ),
      ),
    );

    expect(find.byType(CustomSearchBar), findsOneWidget);
  });

  testWidgets('ChatList is rendered correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChatsView(
          controller: controller,
          model: model,
        ),
      ),
    );

    ChatList chatList = tester.widget<ChatList>(find.byType(ChatList).first);

    expect(chatList.chats.length, 1);
  });
}
