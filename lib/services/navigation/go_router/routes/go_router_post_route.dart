import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/go_router/navigator_keys.dart';
import 'package:medi_support/ui/screens/post/post_view.dart';

@immutable
class PostRoute extends GoRouteData {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  final String postId;
  const PostRoute({required this.postId});

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      PostView(postId: postId);
}
