
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';

void main() {
  CustomCachedNetworkImage customCachedNetworkImage =
      const CustomCachedNetworkImage(
    imageUrl: 'https://www.example.com/image.jpg',
    width: 150,
    height: 150,
  );

  testWidgets('CustomCachedNetworkImage renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: customCachedNetworkImage,
        ),
      ),
    );

    expect(find.byType(CustomCachedNetworkImage), findsOneWidget);
  });
}
