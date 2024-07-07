import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/create_post/create_post_controller_impl.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_backend_service.dart';
import 'package:medi_support/ui/screens/create_post/services/create_post_navigation_service.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create_post_controller_impl_test.mocks.dart';

@GenerateMocks(<Type>[
  CreatePostNavigationService,
  CreatePostBackendService,
])
class CreatePostControllerImplTest {}

void main() {
  late MockCreatePostBackendService mockCreatePostBackendService;
  late MockCreatePostNavigationService mockCreatePostNavigationService;

  setUp(
    () {
      mockCreatePostBackendService = MockCreatePostBackendService();
      mockCreatePostNavigationService = MockCreatePostNavigationService();
    },
  );

  CreatePostControllerImpl createCreatePostController() {
    final CreatePostControllerImpl createPostController =
        ProviderContainer().read(
      createPostControllerImplProvider(
        backendService: mockCreatePostBackendService,
        navigationService: mockCreatePostNavigationService,
      ).notifier,
    );
    final KeepAliveLink keepAliveLink = createPostController.ref.keepAlive();
    addTearDown(keepAliveLink.close);
    return createPostController;
  }

  test(
    'CreatePostControllerImpl should be able to send a post',
    () {
      createCreatePostController().send(
        title: 'Title',
        body: 'Body',
        onSend: () {},
      );
      verify(
        mockCreatePostBackendService.createPost(
          title: 'Title',
          content: 'Body',
        ),
      ).called(1);
    },
  );

  test(
    'CreatePostControllerImpl should show a snackbar if title or body is empty',
    () {
      final CreatePostControllerImpl createPostController =
          createCreatePostController()
            ..send(
              title: '',
              body: 'Body',
              onSend: () {},
            );
      verify(
        mockCreatePostNavigationService
            .showSnackBar('Bitte fülle alle Felder aus'),
      ).called(1);
      createPostController.send(
        title: 'Title',
        body: '',
        onSend: () {},
      );
      verify(
        mockCreatePostNavigationService
            .showSnackBar('Bitte fülle alle Felder aus'),
      ).called(1);
    },
  );

  test(
    'CreatePostControllerImpl should show a snackbar if creating a post fails',
    () async {
      final CreatePostControllerImpl createPostController =
          createCreatePostController();
      when(
        mockCreatePostBackendService.createPost(
          title: anyNamed('title'),
          content: anyNamed('content'),
        ),
      ).thenAnswer((_) => Future<void>.error(ArgumentError()));

      createPostController.send(
        title: 'Title',
        body: 'Body',
        onSend: () {},
      );

      await Future<void>.delayed(Duration.zero);

      verify(
        mockCreatePostNavigationService
            .showSnackBar('Post erstellen fehlgeschlagen'),
      ).called(1);
    },
  );

  test(
    'CreatePostControllerImpl should be able to go home',
    () {
      createCreatePostController().goHome();
      verify(mockCreatePostNavigationService.goHome()).called(1);
    },
  );
}
