import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/create_post/create_post_controller.dart';
import 'package:medi_support/ui/screens/create_post/create_post_view.dart';
import 'package:medi_support/ui/screens/post/post_controller.dart';
import 'package:medi_support/ui/screens/post/post_model.dart';
import 'package:medi_support/ui/screens/post/post_view.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';

import '../../../mocks.mocks.dart';

void main() {
  late final PostController controller;

  setUp(() {
    controller = MockPostController();
  });

  testWidgets(
      'CustomAppBar renders correctly without title and profile picture',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: PostView(
          controller: controller,
          model: const PostModel(currentUserId: ''),
        ),
      ),
    );

    expect(find.byType(CustomAppBar), findsOneWidget);
  });
}
