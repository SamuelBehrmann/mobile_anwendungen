import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/navigation_service.dart';

class GoRouterNavigationService extends NavigationServiceAggregator {
  final GoRouter goRouter;
  GoRouterNavigationService(
    this.goRouter,
  );

  @override
  void navigateToChat() {
    goRouter.push('/chat');
  }

  @override
  void navigateToHome() {
    // TODO: implement navigateToHome
  }

  @override
  void navigateToPosts() {
    // TODO: implement navigateToPosts
  }

  @override
  void navigateToProfile() {
    // TODO: implement navigateToProfile
  }
}
