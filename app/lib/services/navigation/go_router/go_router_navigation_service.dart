import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/go_router/routes/go_router_chat_route.dart';
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

  @override
  void openChat({required String chatId}) =>
      unawaited(goRouter.push(ChatRoute(chatId: chatId).location));

  @override
  void goHome() => goRouter.go(HomeRoute().location);

  @override
  void goBack() => goRouter.pop();

  void _showSnackBar(String message) {
    final BuildContext? ctx =
        goRouter.routerDelegate.navigatorKey.currentContext;
    if (ctx == null) {
      return;
    }
    ScaffoldMessenger.of(ctx).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  void showSnackBar({required String message}) => _showSnackBar(message);
}
