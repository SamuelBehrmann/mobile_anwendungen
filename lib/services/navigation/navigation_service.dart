import 'package:medi_support/services/navigation/go_router/go_router.dart';
import 'package:medi_support/services/navigation/go_router/go_router_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_service.g.dart';

@Riverpod(keepAlive: true)
NavigationServiceAggregator navigationServiceAggregator(
  NavigationServiceAggregatorRef ref,
) =>
    GoRouterNavigationService(
      ref.read(goRouterProvider),
    );

abstract class NavigationServiceAggregator {}