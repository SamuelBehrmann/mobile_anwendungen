import 'package:flutter/material.dart' hide SearchController;
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/search/search_model.dart';
import 'package:medi_support/ui/screens/search/search_view.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_search_bar.dart';
import 'package:medi_support/ui/widgets/icon_row.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockSearchController controller;

  SearchModel model = const SearchModel(
    query: null,
  );

  setUp(() {
    controller = MockSearchController();
  });

  testWidgets('CustomAppBar renders correctly with buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SearchView(
          controller: controller,
          model: model,
        ),
      ),
    );

    CustomAppBar customAppBar =
        tester.widget<CustomAppBar>(find.byType(CustomAppBar).first);

    expect(customAppBar.title, 'Suche');
    expect(find.byType(CustomAppBar), findsOneWidget);
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);

    await tester.tap(find.byIcon(Icons.arrow_back));
    verify(controller.goBack()).called(1);
  });

  testWidgets('CustomSearchBar renders correctly with query null',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SearchView(
          controller: controller,
          model: model,
        ),
      ),
    );

    CustomSearchBar customSearchBar =
        tester.widget<CustomSearchBar>(find.byType(CustomSearchBar).first);

    expect(customSearchBar.currentQuery, null);
  });

  testWidgets('Categories render correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SearchView(
          controller: controller,
          model: model,
        ),
      ),
    );

    expect(find.byType(IconRow), findsNWidgets(2));
  });

  testWidgets('Categories renders correctly on click works',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: SearchView(
          controller: controller,
          model: model,
        ),
      ),
    );

    await tester.tap(find.text('Ohren').first);
    verify(controller.onSearch(query: 'Ohren')).called(1);
  });
}
