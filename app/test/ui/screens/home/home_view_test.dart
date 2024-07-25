import 'package:flutter/material.dart' hide SearchController;
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/home/home_model.dart';
import 'package:medi_support/ui/screens/home/home_view.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/post_preview.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockHomeController controller;

  HomeModel model = const HomeModel.data(
    posts: <HomeModelPost>[
      HomeModelPost(
        postId: 'id',
        title: 'title',
        body: 'content',
        user: HomeModelUser(
          id: 'id',
          name: 'name',
          avatarUrl: 'www.google.de',
          titles: <String>[''],
        ),
      ),
    ],
  );

  setUp(() {
    controller = MockHomeController();
  });

  testWidgets('CustomAppBar renders correctly with buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HomeView(
          controller: controller,
          model: model,
        ),
      ),
    );

    CustomAppBar customAppBar =
        tester.widget<CustomAppBar>(find.byType(CustomAppBar).first);

    expect(customAppBar.title, 'Home');
    expect(find.byIcon(Icons.search), findsOneWidget);

    await tester.tap(find.byIcon(Icons.search));

    tester.idle();
    verify(controller.openSearch()).called(1);
  });

  testWidgets('At least Post is rendered correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: HomeView(
          controller: controller,
          model: model,
        ),
      ),
    );

    expect(find.byType(PostPreview), findsAtLeast(1));
  });
}
