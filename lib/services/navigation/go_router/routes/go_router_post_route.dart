import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/go_router/navigator_keys.dart';
import 'package:medi_support/services/navigation/navigation_service.dart';
import 'package:medi_support/ui/screens/post/post_controller_impl.dart';
import 'package:medi_support/ui/screens/post/post_model.dart';
import 'package:medi_support/ui/screens/post/post_view.dart';

@immutable
class PostRoute extends GoRouteData {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
  final String postId;
  const PostRoute({required this.postId});

  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
        builder: (_, WidgetRef ref, __) {
          final PostControllerImplProvider provider =
              postControllerImplProvider(
            postId: postId,
            navigationService: ref.read(navigationServiceAggregatorProvider),
          );
          final PostControllerImpl controller = ref.read(provider.notifier);
          final PostModel model = ref.watch(provider);

          return PostView(controller: controller, model: model);
        },
      );
}
