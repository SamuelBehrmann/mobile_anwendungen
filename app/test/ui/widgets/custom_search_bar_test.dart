import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/custom_search_bar.dart';

void main() {
  testWidgets('CustomSearchBar renders correctly', (WidgetTester tester) async {
    CustomSearchBar customSearchBarWithoutQuery = CustomSearchBar(
      onSearch: (String query) {},
      onDiscard: () {},
      currentQuery: null,
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: customSearchBarWithoutQuery,
        ),
      ),
    );

    expect(find.byType(CustomSearchBar), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);
  });

  testWidgets('CustomSearchBar shows initial query',
      (WidgetTester tester) async {
    CustomSearchBar customSearchBarWithQuery = CustomSearchBar(
      onSearch: (String query) {},
      onDiscard: () {},
      currentQuery: 'lunge',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: customSearchBarWithQuery,
        ),
      ),
    );

    expect(find.text('lunge'), findsOneWidget);
  });

  testWidgets('Tapping close icon in CustomSearchBar',
      (WidgetTester tester) async {
    CustomSearchBar customSearchBarWithQuery = CustomSearchBar(
      onSearch: (String query) {},
      onDiscard: () {},
      currentQuery: 'lunge',
    );
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: customSearchBarWithQuery,
        ),
      ),
    );

    await tester.tap(find.byIcon(Icons.close));

    expect(find.text('lunge'), findsNothing);
  });
}
