import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/widgets/post_preview.dart';

void main() {
  group('PostPreview Widget Tests', () {
    final PostPreviewAccount mockAccount = PostPreviewAccount(
      name: 'John Doe',
      imageUrl: Uri.parse('http://example.com/image.jpg'),
      titles: <String>['Developer'],
    );
    const String postId = '123';
    const String mockTitle = 'Post Title';
    const String mockContent = 'This is the post content.';
    testWidgets('Renders header, content', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: PostPreview(
            postId: postId,
            account: mockAccount,
            title: mockTitle,
            content: mockContent,
            onPostTap: (String s) {},
          ),
        ),
      ),);

      expect(find.text(mockTitle), findsOneWidget);
      expect(find.text(mockContent), findsWidgets);
    });

    testWidgets('Displays account name and titles in header',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: PostPreview(
            postId: postId,
            account: mockAccount,
            title: 'Another Post',
            content: 'More content here.',
            onPostTap: (String s) {},
          ),
        ),
      ),);

      expect(find.text('John Doe'), findsOneWidget);

      expect(find.text('Developer'), findsOneWidget);
    });

    testWidgets('Post title and content are displayed correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: PostPreview(
            postId: postId,
            account: mockAccount,
            title: 'Test Title',
            content: 'Test content goes here.',
            onPostTap: (String s) {},
          ),
        ),
      ),);

      final Finder titleFinder = find.text('Test Title');
      final Finder contentFinder = find.text('Test content goes here.');

      expect(titleFinder, findsOneWidget);
      expect(contentFinder, findsOneWidget);

      final Text titleWidget = tester.widget(titleFinder) as Text;
      final Text contentWidget = tester.widget(contentFinder) as Text;

      expect(titleWidget.overflow, TextOverflow.ellipsis);
      expect(contentWidget.overflow, TextOverflow.ellipsis);
    });

    testWidgets('onPostTap callback is triggered on tap',
        (WidgetTester tester) async {
      String tappedPostId = '';
      const String expectedPostId = '123';

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: PostPreview(
            postId: expectedPostId,
            account: mockAccount,
            title: 'Clickable Post Title',
            content: 'Content of a clickable post.',
            onPostTap: (String postId) {
              tappedPostId = postId;
            },
          ),
        ),
      ),);

      await tester.tap(find.byType(FilledButton));
      await tester.pump(); // Trigger a frame

      expect(tappedPostId, expectedPostId,
          reason:
              'The tappedPostId should match the expectedPostId after the tap.',);
    });
  });
}