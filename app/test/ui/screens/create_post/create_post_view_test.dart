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

  testWidgets('CustomAppBar renders correctly with buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(home: CreatePostView(controller: controller)),
    );

    expect(find.byType(CustomAppBar), findsOneWidget);
    expect(find.byIcon(Icons.close), findsOneWidget);
    expect(find.byIcon(Icons.send), findsOneWidget);
  });

  testWidgets('send button working', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(home: CreatePostView(controller: controller)),
    );

    await tester.tap(find.byIcon(Icons.send));
    tester.idle();
    // wtf
    verify(
      controller.send(
        title: 'test',
        body: 'test',
        onSend: () {},
      ),
    ).called(1);
  });

  testWidgets('close button working', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(home: CreatePostView(controller: controller)),
    );

    expect(find.byIcon(Icons.close), findsOneWidget);

    await tester.tap(find.byIcon(Icons.close));
    verify(controller.goHome()).called(1);
  });

  testWidgets(
      'both CustomTextFormFields exist and have the right lable and hint',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(home: CreatePostView(controller: controller)),
    );

    CustomTextFormField formField1 = tester
        .widget<CustomTextFormField>(find.byType(CustomTextFormField).first);

    CustomTextFormField formField2 = tester
        .widget<CustomTextFormField>(find.byType(CustomTextFormField).last);

    expect(formField1.label, 'Titel');
    expect(formField1.hint, 'Titel');

    expect(formField2.label, 'Beitrag');
    expect(formField2.hint, 'Ich habe ...');
  });
}
