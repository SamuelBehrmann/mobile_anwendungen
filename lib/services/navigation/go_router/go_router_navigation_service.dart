import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/navigation_service.dart';

class GoRouterNavigationService extends NavigationServiceAggregator {
  final GoRouter goRouter;
  GoRouterNavigationService(
    this.goRouter,
  );

  @override
  void navigateToCreatePostView() => goRouter.go('/post');
}
