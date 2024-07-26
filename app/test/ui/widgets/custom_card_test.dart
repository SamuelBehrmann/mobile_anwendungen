import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/custom_card.dart';

void main() {
  CustomCard customCard = const CustomCard(
    contentPadding: EdgeInsets.all(16),
    child: Text('Test'),
  );

  testWidgets('CustomCard is configured correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: customCard,
        ),
      ),
    );

    expect(find.byType(Card), findsOneWidget);
    expect(find.text('Test'), findsOneWidget);
    expect(
      tester.widget<Card>(find.byType(Card)).shape,
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(
          strokeAlign: BorderSide.strokeAlignInside,
          color: Color(0xffeaddff),
          width: 1,
        ),
      ),
    );
  });
}
