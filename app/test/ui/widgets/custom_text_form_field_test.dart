import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/custom_text_form_field.dart';

void main() {
  group('CustomTextFormField Tests', () {
    testWidgets('Initializes with provided text', (WidgetTester tester) async {
      const String initialText = 'Initial Text';
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: CustomTextFormField(
              initialText: initialText,
              isPasswordField: false,
              hint: '',
            ),
          ),
        ),
      );

      expect(find.text(initialText), findsOneWidget);
    });

    testWidgets('Toggles password visibility', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: CustomTextFormField(
              isPasswordField: true,
              hint: '',
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.visibility_off), findsOneWidget);
      await tester.tap(find.byIcon(Icons.visibility_off));
      await tester.pump();

      expect(find.byIcon(Icons.visibility), findsOneWidget);
    });

    testWidgets('OnChanged is working', (WidgetTester tester) async {
      const String testText = 'Test Text';
      String? changedText;
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: CustomTextFormField(
              onChanged: (String text) => changedText = text,
              isPasswordField: false,
              hint: '',
            ),
          ),
        ),
      );

      await tester.enterText(find.byType(TextField), testText);
      await tester.pump();

      expect(changedText, testText);
    });
  });
}
