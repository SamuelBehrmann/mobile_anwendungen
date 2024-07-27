import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/custom_text_field.dart';

void main() {
  late Completer<void> completerSubmit;
  late Completer<void> completerOnTabOutside;
  late CustomTextField customTextField;

  setUp(() {
    completerSubmit = Completer<void>();
    completerOnTabOutside = Completer<void>();
    customTextField = CustomTextField(
      onSubmitted: completerSubmit.complete,
      onTapOutside: completerOnTabOutside.complete,
    );
  });

  testWidgets('CustomTextField renders correctly with onSubmitted working',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: customTextField,
        ),
      ),
    );

    tester.firstWidget(find.byType(CustomTextField));

    const String testText = 'Test input';
    await tester.enterText(find.byType(TextField), testText);
    await tester.testTextInput.receiveAction(TextInputAction.done);

    expect(completerSubmit.isCompleted, isTrue);
  });

  testWidgets('CustomTextField renders correctly with onTabOutside working',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: customTextField,
          ),
        ),
      ),
    );

    tester.firstWidget(find.byType(CustomTextField));

    const String testText = 'Test input';
    await tester.enterText(find.byType(TextField), testText);
    await tester.tapAt(const Offset(0, 0));

    expect(completerOnTabOutside.isCompleted, isTrue);
  });
}
