import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:medi_support/ui/widgets/bottom_navigation.dart' as bottom_nav;
import 'package:medi_support/ui/widgets/custom_app_bar.dart';
import 'package:medi_support/ui/common/theme.dart';
import 'package:medi_support/ui/pages/post/post_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Medi Support',
        theme: theme,
        home: const MyHomePage(title: 'Medi Support'),
        routes: <String, WidgetBuilder>{
          '/home': (BuildContext context) =>
              const MyHomePage(title: 'Medi Support'),
          '/post': (BuildContext context) => const PostView(),
        },
      );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CostumAppBar(title: some("Medi Support")),
        bottomNavigationBar: const bottom_nav.BottomNavigation(),
      );
}
