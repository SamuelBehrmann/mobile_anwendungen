import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/create_post/create_post_controller.dart';
import 'package:medi_support/ui/screens/create_post/create_post_view.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_text_form_field.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

void main() {
  late final CreatePostController controller;

  setUp(() {
    controller = MockCreatePostController();
  });

  testWidgets(
      'CustomAppBar renders correctly without title and profile picture',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(home: CreatePostView(controller: controller)),
    );

    CustomTextFormField test = tester
        .widget<CustomTextFormField>(find.byType(CustomTextFormField).first);

    expect(test.hint, 'Titel');
    expect(find.byType(CustomAppBar), findsOneWidget);
    expect(find.byIcon(Icons.close), findsOneWidget);
    expect(find.byIcon(Icons.send), findsOneWidget);
    expect(find.text('Titel'), findsNWidgets(2));
    expect(find.text('Ich habe ...'), findsOneWidget);
    expect(find.text('Beitrag'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.close));
    verify(controller.goHome());
  });
}
