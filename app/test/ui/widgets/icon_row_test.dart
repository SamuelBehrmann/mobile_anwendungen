import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/icon_row.dart';

void main() {
  group('IconRow Tests', () {
    testWidgets('Renders provided icons', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: IconRow(
              iconSize: 24.0,
              icons: <IconWithLabel>[
                IconWithLabel(
                  Icon(Icons.home),
                  'Home',
                ),
                IconWithLabel(
                  Icon(Icons.settings),
                  'Settings',
                ),
              ],
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.home), findsOneWidget);
      expect(find.byIcon(Icons.settings), findsOneWidget);
      expect(find.text('Home'), findsOneWidget);
      expect(find.text('Settings'), findsOneWidget);
    });

    testWidgets('Icon press triggers onIconPressed callback with correct value',
        (WidgetTester tester) async {
      String pressedIconLabel = '';
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: IconRow(
              iconSize: 24.0,
              icons: const <IconWithLabel>[
                IconWithLabel(Icon(Icons.home), 'Home'),
                IconWithLabel(Icon(Icons.settings), 'Settings'),
              ],
              onIconPressed: ({required String value}) {
                pressedIconLabel = value;
              },
            ),
          ),
        ),
      );

      await tester.tap(find.byIcon(Icons.home));
      expect(pressedIconLabel, 'Home');
    });
  });
}
