import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/go_router/navigator_keys.dart';
import 'package:medi_support/services/navigation/go_router/routes/go_router_shell_routes.dart';
import 'package:medi_support/ui/screens/main/main_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router.g.dart';

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
              routes: <RouteBase>[$homeRoute],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[$createPostRoute],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[$chatsRoute],
            ),
            StatefulShellBranch(
              routes: <RouteBase>[$profileRoute],
            ),
          ],
        ),
      ],
    );
