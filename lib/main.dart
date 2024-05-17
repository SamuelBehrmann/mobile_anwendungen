import 'package:flutter/material.dart';
import 'package:medi_support/ui/widgets/bottom_navigation.dart' as bottom_nav;
import 'package:medi_support/ui/common/theme.dart' as theme;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter Demo',
        theme: theme.appThemeData,
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        appBar: AppBar(
          title: Text(widget.title),
        ),
        bottomNavigationBar: const bottom_nav.BottomNavigation(),
      );
}
