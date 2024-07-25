import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/profile/profile_controller.dart';
import 'package:medi_support/ui/screens/profile/profile_model.dart';
import 'package:medi_support/ui/screens/profile/profile_view.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/widgets/custom_text_form_field.dart';

import '../../../mocks.mocks.dart';

void main() {
  late ProfileController controller;

  ProfileModel model = const ProfileModel.data(
    user: ProfileModelUser(
      id: 'id',
      name: 'name',
      email: '',
      password: '',
    ),
  );

  setUp(() {
    controller = MockProfileController();
  });

  testWidgets('CustomAppBar renders correctly with buttons',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ProfileView(
          controller: controller,
          model: model,
        ),
      ),
    );

    CustomAppBar customAppBar =
        tester.widget<CustomAppBar>(find.byType(CustomAppBar).first);

    expect(customAppBar.title, 'Profil');
    expect(find.byType(CustomAppBar), findsOneWidget);
  });

  testWidgets('All custom TextFields are rendered correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ProfileView(
          controller: controller,
          model: model,
        ),
      ),
    );

    expect(find.byType(CustomTextFormField), findsExactly(3));
  });

  testWidgets('The CircleAvatar is rendered correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ProfileView(
          controller: controller,
          model: model,
        ),
      ),
    );

    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
