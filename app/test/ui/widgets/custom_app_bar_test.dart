import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';

void main() {
  testWidgets('CustomAppBar renders correctly with title',
      (WidgetTester tester) async {
    const String testTitle = 'Test Title';
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          appBar: CustomAppBar(
            title: testTitle,
          ),
        ),
      ),
    );

    expect(find.byType(CustomAppBar), findsOneWidget);
    expect(find.text(testTitle), findsOneWidget);
  });
}
