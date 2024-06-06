import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/go_router/go_router.dart';
import 'package:medi_support/ui/common/theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GoRouter router = ref.read(goRouterProvider);

    return MaterialApp.router(
      title: 'Medi Support',
      theme: materialTheme.light(),
      darkTheme: materialTheme.dark(),
      routerConfig: router,
    );
  }
}
