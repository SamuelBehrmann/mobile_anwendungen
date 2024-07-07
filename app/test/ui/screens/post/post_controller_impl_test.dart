import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/post/post_controller_impl.dart';
import 'package:medi_support/ui/screens/post/services/post_backend_service.dart';
import 'package:medi_support/ui/screens/post/services/post_navigation_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'post_controller_impl_test.mocks.dart';

@GenerateMocks(<Type>[
  PostNavigationService,
  PostBackendService,
])
class PostControllerImplTest {}

void main() {
  late MockPostBackendService mockPostBackendService;
  late MockPostNavigationService mockPostNavigationService;

  setUp(() {
    mockPostBackendService = MockPostBackendService();
    mockPostNavigationService = MockPostNavigationService();
  });

  PostControllerImpl createPostController() {
    final PostControllerImpl postController = ProviderContainer().read(
      postControllerImplProvider(
        postId: 'postId',
        backendService: mockPostBackendService,
        navigationService: mockPostNavigationService,
      ).notifier,
    );
    final KeepAliveLink keepAliveLink = postController.ref.keepAlive();
    addTearDown(keepAliveLink.close);
    return postController;
  }

  test('PostControllerImpl should be able to go back', () {
    createPostController().goBack();
    verify(mockPostNavigationService.goBack()).called(1);
  });

  // sam can u fix this test
  test('PostControllerImpl should be able to submit a reply', () {
    createPostController()
      ..setSelectedMessageToReply(messageId: 'messageId')
      ..submitReply(message: 'message');

    verify(
      mockPostBackendService.submitReply(
        postId: 'postId',
        message: 'message',
        replyToMessageId: 'messageId',
      ),
    ).called(1);
  });

  test(
    'go back should call navigation service go back',
    () {
      createPostController().goBack();
      verify(mockPostNavigationService.goBack()).called(1);
    },
  );
}
