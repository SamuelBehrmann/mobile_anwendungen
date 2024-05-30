import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medi_support/ui/screens/main/main_controller_impl.dart';
import 'package:medi_support/ui/screens/main/main_model.dart';
import 'package:medi_support/ui/widgets/bottom_navigation.dart' as bottom_nav;

class MainView extends ConsumerWidget {
  const MainView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MainControllerImpl controller =
        ref.watch(mainControllerImplProvider.notifier);
    final MainModel model = ref.watch(mainControllerImplProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[_buildShuffleButton(controller, model)],
      ),
      bottomNavigationBar: const bottom_nav.BottomNavigation(),
    );
  }

  IconButton _buildShuffleButton(
    MainControllerImpl controller,
    MainModel model,
  ) =>
      IconButton(
        onPressed: controller.changeColor,
        icon: const Icon(Icons.shuffle),
        color: switch (model.color) {
          MainModelColor.red => Colors.red,
          MainModelColor.green => Colors.green,
          MainModelColor.blue => Colors.blue,
        },
      );
}
