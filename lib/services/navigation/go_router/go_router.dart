import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/ui/screens/chat/chat_view.dart';
import 'package:medi_support/ui/screens/home/home_view.dart';
import 'package:medi_support/ui/screens/main/main_view.dart';
import 'package:medi_support/ui/screens/post/post_view.dart';
import 'package:medi_support/ui/screens/profile/profile_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router.g.dart';

final GlobalKey<NavigatorState> homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'mainNavigatorKey');
final GlobalKey<NavigatorState> postNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'postNavigatorKey');
final GlobalKey<NavigatorState> chatNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'chatNavigatorKey');
final GlobalKey<NavigatorState> profileNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'profileNavigatorKey');

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) => GoRouter(
      initialLocation: '/',
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          builder: (_, __, StatefulNavigationShell navigationShell) => MainView(
            navigationShell: navigationShell,
          ),
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              navigatorKey: homeNavigatorKey,
              routes: <RouteBase>[
                GoRoute(
                  path: '/',
                  builder: (BuildContext context, GoRouterState state) =>
                      const HomeView(),
                  routes: <GoRoute>[
                    _buildPostRoute(),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: chatNavigatorKey,
              routes: <RouteBase>[
                GoRoute(
                  path: '/chat',
                  builder: (BuildContext context, GoRouterState state) =>
                      const ChatView(),
                  routes: <GoRoute>[
                    _buildPostRoute(),
                  ],
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: profileNavigatorKey,
              routes: <RouteBase>[
                GoRoute(
                  path: '/profile',
                  builder: (BuildContext context, GoRouterState state) =>
                      const ProfileView(),
                  routes: <GoRoute>[
                    _buildPostRoute(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );

GoRoute _buildPostRoute() => GoRoute(
      path: 'post',
      pageBuilder: (BuildContext context, GoRouterState state) =>
          ModalBottomSheetPage<void>(
        isScrollControlled: true,
        builder: (_) => const PostView(),
      ),
    );

class ModalBottomSheetPage<T> extends Page<T> {
  final Widget Function(BuildContext context) builder;
  final bool isScrollControlled;

  const ModalBottomSheetPage({
    required this.builder,
    this.isScrollControlled = false,
  });

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute<T>(
        settings: this,
        useSafeArea: true,
        modalBarrierColor: Colors.transparent,
        sheetAnimationStyle: AnimationStyle(
          curve: Curves.easeOut,
          duration: const Duration(milliseconds: 300),
        ),
        builder: builder,
        isScrollControlled: isScrollControlled,
        enableDrag: false,
      );
}
