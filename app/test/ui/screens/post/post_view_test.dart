import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/post/post_controller.dart';
import 'package:medi_support/ui/screens/post/post_model.dart';
import 'package:medi_support/ui/screens/post/post_view.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

void main() {
  late final PostController controller;

  PostModel model = PostModel.data(
    post: PostModelPost(
      author: PostModelUser(
        id: '',
        name: '',
        avatar: Uri.parse('www.google.de'),
        titles: <String>[''],
      ),
      id: '',
      title: 'post title',
      content: '',
      replies: <PostModelMessage>[],
    ),
  );

  setUpAll(() {
    controller = MockPostController();
  });

  testWidgets('CustomAppBar renders correctly with buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: PostView(
          controller: controller,
          model: model,
        ),
      ),
    );

    CustomAppBar customAppBar =
        tester.widget<CustomAppBar>(find.byType(CustomAppBar).first);

    expect(customAppBar.title, 'post title');
    expect(find.byType(CustomAppBar), findsOneWidget);
    expect(find.byIcon(Icons.arrow_back), findsOneWidget);
  });

  testWidgets('Tapping back button calls controller',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: PostView(
          controller: controller,
          model: model,
        ),
      ),
    );

    await tester.tap(find.byIcon(Icons.arrow_back));
    verify(controller.goBack()).called(1);
  });
}
