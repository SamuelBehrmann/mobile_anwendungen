import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/go_router/navigator_keys.dart';
import 'package:medi_support/ui/screens/search/search_view.dart';

@immutable
class SearchRoute extends GoRouteData {
  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) => const SearchView();
}
