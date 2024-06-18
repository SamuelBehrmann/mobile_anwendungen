import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/services/backend/backend_service.dart';
import 'package:medi_support/services/navigation/go_router/routes/go_router_chat_route.dart';
import 'package:medi_support/services/navigation/go_router/routes/go_router_post_route.dart';
import 'package:medi_support/services/navigation/go_router/routes/go_router_search_route.dart';
import 'package:medi_support/services/navigation/route_paths.dart';
import 'package:medi_support/services/navigation/navigation_service.dart';
import 'package:medi_support/ui/screens/chats/chats_view.dart';
import 'package:medi_support/ui/screens/create_post/create_post_view.dart';
import 'package:medi_support/ui/screens/home/home_controller_impl.dart';
import 'package:medi_support/ui/screens/home/home_view.dart';
import 'package:medi_support/ui/screens/profile/profile_controller_impl.dart';
import 'package:medi_support/ui/screens/profile/profile_view.dart';
import 'package:medi_support/ui/screens/create_post/create_post_controller_impl.dart';

part 'go_router_shell_routes.g.dart';

// HomeShellRoute
@TypedGoRoute<HomeRoute>(
  path: homePath,
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<SearchRoute>(
      path: searchPath,
      routes: <TypedRoute<RouteData>>[],
    ),
    TypedGoRoute<PostRoute>(
      path: postPath,
    ),
  ],
)
@immutable
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
        builder: (BuildContext context, WidgetRef watch, Widget? child) {
          final HomeControllerImplProvider provider =
              homeControllerImplProvider(
            navigationService: watch.watch(navigationServiceAggregatorProvider),
          );
          return HomeView(
            model: watch.watch(provider),
            controller: watch.watch(provider.notifier),
          );
        },
      );
}

// ChatsShellRoute
@TypedGoRoute<ChatsRoute>(
  path: chatsPath,
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<ChatRoute>(
      path: chatPath,
    ),
  ],
)
@immutable
class ChatsRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => const ChatsView();
}

// CreatePostShellRoute
@TypedGoRoute<CreatePostRoute>(
  path: createPostPath,
  routes: <TypedRoute<RouteData>>[],
)
@immutable
class CreatePostRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
        builder: (_, WidgetRef ref, __) {
          final NavigationServiceAggregator navigationService =
              ref.read(navigationServiceAggregatorProvider);
          final BackendServiceAggregator backendService =
              ref.read(backendServiceAggregatorProvider);
          final CreatePostControllerImplProvider provider =
              createPostControllerImplProvider(
            navigationService: navigationService,
            backendService: backendService,
          );
          return CreatePostView(
            controller: ref.watch(provider.notifier),
          );
        },
      );
}

// ProfileShellRoute
@TypedGoRoute<ProfileRoute>(
  path: profilePath,
  routes: <TypedRoute<RouteData>>[],
)
@immutable
class ProfileRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
        builder: (BuildContext context, WidgetRef watch, Widget? child) {
          final ProfileControllerImplProvider provider =
              profileControllerImplProvider(
            navigationService: watch.watch(navigationServiceAggregatorProvider),
          );
          return ProfileView(
            model: watch.watch(provider),
            controller: watch.watch(provider.notifier),
          );
        },
      );
}
