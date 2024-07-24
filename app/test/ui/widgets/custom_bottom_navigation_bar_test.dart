import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/custom_bottom_navigation_bar.dart';

void main() {
  final Completer<void> completer = Completer<void>();
  CustomBottomNavigationBar customBottomNavigationBar =
      CustomBottomNavigationBar(
    currentIndex: 1,
    onTap: completer.complete,
    items: const <CustomBottomNavBarItem>[
      CustomBottomNavBarItem(icon: Icons.home, label: 'Home'),
      CustomBottomNavBarItem(icon: Icons.chat, label: 'Chat'),
    ],
  );

  testWidgets('CustomBottomNavigationBar renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: customBottomNavigationBar,
        ),
      ),
    );

    expect(find.byType(CustomBottomNavigationBar), findsOneWidget);

    expect(find.byType(BottomNavigationBar), findsOneWidget);
  });

  testWidgets('CustomBottomNavigationBar renders correctly button works',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: customBottomNavigationBar,
        ),
      ),
    );

    expect(find.byType(CustomBottomNavigationBar), findsOneWidget);

    expect(find.byType(BottomNavigationBar), findsOneWidget);

    await tester.tap(find.byType(BottomNavigationBar));
    // is this an option sam?
    expect(completer.isCompleted, isTrue);
  });
}
