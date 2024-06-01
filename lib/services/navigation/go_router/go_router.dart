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
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: postNavigatorKey,
              routes: <RouteBase>[
                GoRoute(
                  path: '/post',
                  builder: (BuildContext context, GoRouterState state) =>
                      const PostView(),
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
                ),
              ],
            ),
          ],
        ),
      ],
    );
