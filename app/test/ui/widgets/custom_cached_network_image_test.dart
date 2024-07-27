import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/custom_cached_network_image.dart';

void main() {
  testWidgets('CustomCachedNetworkImage is configured correctly',
      (WidgetTester tester) async {
    CustomCachedNetworkImage customCachedNetworkImage =
        const CustomCachedNetworkImage(
      imageUrl: 'https://www.example.com/image.jpg',
      width: 150,
      height: 150,
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: customCachedNetworkImage,
        ),
      ),
    );
    final CachedNetworkImage cachedNetworkImage = tester
        .widget<CachedNetworkImage>(find.byType(CachedNetworkImage).first);

    expect(cachedNetworkImage.fit, BoxFit.cover);
    expect(cachedNetworkImage.height, 150);
    expect(cachedNetworkImage.width, 150);
    expect(cachedNetworkImage.imageUrl, 'https://www.example.com/image.jpg');
  });
}
