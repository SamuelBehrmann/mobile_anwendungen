import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medi_support/ui/common/theme.dart';
import 'package:medi_support/ui/screens/post/post_view.dart';
import 'package:medi_support/ui/screens/main/main_view.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Medi Support',
        theme: lightTheme,
        darkTheme: darkTheme,
        home: const MainView(),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) => const MainView(),
          '/post': (BuildContext context) => const PostView(),
        },
      );
}
