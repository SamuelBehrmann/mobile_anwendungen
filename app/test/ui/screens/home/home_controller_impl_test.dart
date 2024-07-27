import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:medi_support/ui/screens/chats/chats_controller_impl.dart';
import 'package:medi_support/ui/screens/chats/chats_model.dart';
import 'package:medi_support/ui/screens/chats/services/chats_backend_service.dart';
import 'package:medi_support/ui/screens/home/home_controller_impl.dart';
import 'package:mockito/mockito.dart';

import '../../../mocks.mocks.dart';

void main() {
  late MockHomeBackendService mockHomeBackendService;
  late MockHomeNavigationService mockHomeNavigationService;
  setUp(
    () {
      mockHomeBackendService = MockHomeBackendService();
      mockHomeNavigationService = MockHomeNavigationService();
      when(mockHomeBackendService.getHomePostsStream(maxCount: 20)).thenAnswer(
        (_) => const Stream.empty(),
      );
    },
  );

  HomeControllerImpl createHomePostsController() {
    final HomeControllerImpl homeController = ProviderContainer().read(
      homeControllerImplProvider(
        backendService: mockHomeBackendService,
        navigationService: mockHomeNavigationService,
      ).notifier,
    );
    final KeepAliveLink keepAliveLink = homeController.ref.keepAlive();
    addTearDown(keepAliveLink.close);
    return homeController;
  }

  test('Home controller impl build', () {
    createHomePostsController();
    verify(mockHomeBackendService.getHomePostsStream(maxCount: 20)).called(1);
  });

  test('Home controller impl openSearch ', () {
    createHomePostsController().openSearch();
    verify(mockHomeNavigationService.openSearch()).called(1);
  });

  test('Home controller impl openPost ', () {
    createHomePostsController().openPost(postId: 'id');
    verify(mockHomeNavigationService.openPost(postId: 'id')).called(1);
  });
}
