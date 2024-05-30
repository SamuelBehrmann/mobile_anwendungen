import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medi_support/ui/common/theme.dart' as theme;
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
        title: 'Flutter Demo',
        theme: theme.appThemeData,
        home: const MainView(
          title: 'Flutter Demo Home Page',
        ),
      );
}
