import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/ui/widgets/bottom_navigation.dart' as bottom_nav;
import 'package:medi_support/ui/widgets/custom_app_bar.dart';

class PostView extends StatelessWidget {
  const PostView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: CostumAppBar(
          leading: some(
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
          ),
        ),
        bottomNavigationBar: const bottom_nav.BottomNavigation(),
      );
}
