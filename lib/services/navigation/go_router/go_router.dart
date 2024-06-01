import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/ui/screens/main/main_view.dart';
import 'package:medi_support/ui/screens/post/post_view.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'go_router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) => GoRouter(
      routes: [
        GoRoute(
          path: '/',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: MainView(),
          ),
        ),
        GoRoute(
          path: '/post',
          pageBuilder: (context, state) => MaterialPage(
            key: state.pageKey,
            child: PostView(),
          ),
        ),
        GoRoute(
          path: '/chat',
          builder: (context, state) => Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Chat'),
            ),
          ),
        ),
      ],
    );
