import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/go_router/routes/go_router_shell_routes.dart';
import 'package:medi_support/services/navigation/go_router/routes/go_router_post_route.dart';
import 'package:medi_support/services/navigation/go_router/routes/go_router_search_route.dart';
import 'package:medi_support/services/navigation/navigation_service.dart';

class GoRouterNavigationService extends NavigationServiceAggregator {
  final GoRouter goRouter;
  GoRouterNavigationService(
    this.goRouter,
  );

  @override
  void openSearch() => unawaited(goRouter.push(SearchRoute().location));

  @override
  void openPost({required String postId}) =>
      unawaited(goRouter.push(PostRoute(postId: postId).location));
}
