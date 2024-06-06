import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/navigation_service.dart';
import 'package:medi_support/ui/screens/chats/chats_view.dart';
import 'package:medi_support/ui/screens/home/home_controller_impl.dart';
import 'package:medi_support/ui/screens/home/home_view.dart';
import 'package:medi_support/ui/screens/main/main_view.dart';
import 'package:medi_support/ui/screens/post/post_view.dart';
import 'package:medi_support/ui/screens/profile/profile_view.dart';
import 'package:medi_support/ui/screens/search/search_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'mainNavigatorKey');

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) => GoRouter(
      initialLocation: '/',
      navigatorKey: rootNavigatorKey,
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          builder: (_, __, StatefulNavigationShell navigationShell) => MainView(
            navigationShell: navigationShell,
          ),
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: '/',
                  builder: (BuildContext context, GoRouterState state) =>
                      Consumer(
                    builder: (_, WidgetRef ref, __) {
                      final HomeControllerImplProvider provider =
                          homeControllerImplProvider(
                        navigationService:
                            ref.read(navigationServiceAggregatorProvider),
                      );

                      return HomeView(
                        controller: ref.watch(provider.notifier),
                        model: ref.watch(provider),
                      );
                    },
                  ),
                  routes: <RouteBase>[
                    GoRoute(
                      parentNavigatorKey: rootNavigatorKey,
                      path: 'search',
                      builder: (BuildContext context, GoRouterState state) =>
                          const SearchView(),
                    ),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: '/post',
                  builder: (BuildContext context, GoRouterState state) =>
                      const PostView(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: '/chat',
                  builder: (BuildContext context, GoRouterState state) =>
                      const ChatsView(),
                ),
              ],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[
                GoRoute(
                  path: '/profile',
                  builder: (BuildContext context, GoRouterState state) =>
                      const ProfileView(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
