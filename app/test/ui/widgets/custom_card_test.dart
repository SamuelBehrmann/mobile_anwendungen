import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/custom_bottom_navigation_bar.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';
import 'package:medi_support/ui/widgets/custom_card.dart';

void main() {
  CustomCard customCard = const CustomCard(
    contentPadding: EdgeInsets.all(16),
    child: Text('Test'),
  );

  testWidgets('CustomCard renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: customCard,
        ),
      ),
    );

    expect(find.byType(CustomCard), findsOneWidget);

    expect(find.byType(Card), findsOneWidget);

    expect(find.text('Test'), findsOneWidget);
  });
}
