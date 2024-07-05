// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_router_shell_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
      $chatsRoute,
      $createPostRoute,
      $profileRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'search',
          parentNavigatorKey: SearchRoute.$parentNavigatorKey,
          factory: $SearchRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'post/:postId',
          parentNavigatorKey: PostRoute.$parentNavigatorKey,
          factory: $PostRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SearchRouteExtension on SearchRoute {
  static SearchRoute _fromState(GoRouterState state) => SearchRoute();

  String get location => GoRouteData.$location(
        '/search',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PostRouteExtension on PostRoute {
  static PostRoute _fromState(GoRouterState state) => PostRoute(
        postId: state.pathParameters['postId']!,
      );

  String get location => GoRouteData.$location(
        '/post/${Uri.encodeComponent(postId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $chatsRoute => GoRouteData.$route(
      path: '/chats',
      factory: $ChatsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'chat/:chatId',
          parentNavigatorKey: ChatRoute.$parentNavigatorKey,
          factory: $ChatRouteExtension._fromState,
        ),
      ],
    );

extension $ChatsRouteExtension on ChatsRoute {
  static ChatsRoute _fromState(GoRouterState state) => ChatsRoute();

  String get location => GoRouteData.$location(
        '/chats',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChatRouteExtension on ChatRoute {
  static ChatRoute _fromState(GoRouterState state) => ChatRoute(
        chatId: state.pathParameters['chatId']!,
      );

  String get location => GoRouteData.$location(
        '/chats/chat/${Uri.encodeComponent(chatId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $createPostRoute => GoRouteData.$route(
      path: '/createpost',
      factory: $CreatePostRouteExtension._fromState,
    );

extension $CreatePostRouteExtension on CreatePostRoute {
  static CreatePostRoute _fromState(GoRouterState state) => CreatePostRoute();

  String get location => GoRouteData.$location(
        '/createpost',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $profileRoute => GoRouteData.$route(
      path: '/profile',
      factory: $ProfileRouteExtension._fromState,
    );

extension $ProfileRouteExtension on ProfileRoute {
  static ProfileRoute _fromState(GoRouterState state) => ProfileRoute();

  String get location => GoRouteData.$location(
        '/profile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
