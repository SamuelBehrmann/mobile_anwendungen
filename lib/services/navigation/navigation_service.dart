import 'package:medi_support/services/navigation/go_router/go_router.dart';
import 'package:medi_support/services/navigation/go_router/go_router_navigation_service.dart';
import 'package:medi_support/ui/screens/home/services/home_navigation_service.dart';
import 'package:medi_support/ui/screens/profile/services/profile_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'navigation_service.g.dart';

@Riverpod(keepAlive: true)
NavigationServiceAggregator navigationServiceAggregator(
  NavigationServiceAggregatorRef ref,
) =>
    GoRouterNavigationService(
      ref.read(goRouterProvider),
    );

abstract class NavigationServiceAggregator implements HomeNavigationService, ProfileNavigationService {}
