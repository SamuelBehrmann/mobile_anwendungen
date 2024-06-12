import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/go_router/navigator_keys.dart';
import 'package:medi_support/services/navigation/navigation_service.dart';
import 'package:medi_support/ui/screens/search/search_controller_impl.dart';
import 'package:medi_support/ui/screens/search/search_view.dart';

@immutable
class SearchRoute extends GoRouteData {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) => Consumer(
        builder: (_, WidgetRef ref, __) {
          final NavigationServiceAggregator navigationService =
              ref.read(navigationServiceAggregatorProvider);
          final SearchControllerImplProvider provider =
              searchControllerImplProvider(
            navigationService: navigationService,
          );
          return SearchView(
            model: ref.watch(provider),
            controller: ref.watch(provider.notifier),
          );
        },
      );
}
