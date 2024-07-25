import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/message.dart'; // Adjust the import according to your file structure

void main() {
  group('Message Widget Tests', () {
    testWidgets('Renders username, message, and reply button',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Message(
            username: 'John Doe',
            userAvatar:
                null, // Assuming avatar is optional and not displayed if null
            userTitles: const <String>[],
            message: 'Hello, World!',
            replyCallback: () {},
          ),
        ),
      ),);

      expect(find.text('John Doe'), findsOneWidget);
      expect(find.text('Hello, World!'), findsOneWidget);
      expect(find.byIcon(Icons.reply), findsOneWidget);
    });

    testWidgets('Renders user titles if provided', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Message(
            username: 'Jane Doe',
            userAvatar: null,
            userTitles: const <String>['Developer', 'Photographer'],
            message: 'A new message',
            replyCallback: () {},
          ),
        ),
      ),);

      expect(find.text('Developer, Photographer'), findsOneWidget);
    });

    testWidgets('Reply button triggers replyCallback',
        (WidgetTester tester) async {
      bool replyPressed = false;

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Message(
            username: 'John Doe',
            userAvatar: null,
            userTitles: <String>const <>[],
            message: 'Test message',
            replyCallback: () => replyPressed = true,
          ),
        ),
      ),);

      await tester.tap(find.byIcon(Icons.reply));
      await tester.pump(); // Allow animations to complete

      expect(replyPressed, isTrue);
    });
  });
}
