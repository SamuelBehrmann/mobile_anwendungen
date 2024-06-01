import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:medi_support/services/navigation/navigation_service.dart';
import 'package:medi_support/ui/screens/main/main_controller.dart';
import 'package:medi_support/ui/screens/main/main_controller_impl.dart';
import 'package:medi_support/ui/screens/main/main_model.dart';
import 'package:medi_support/ui/widgets/bottom_navigation.dart';
import 'package:medi_support/ui/widgets/custom_app_bar.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MainControllerImplProvider provider = mainControllerImplProvider(
      ref.watch(navigationServiceAggregatorProvider),
    );
    final MainController controller = ref.watch(provider.notifier);
    final MainModel model = ref.watch(provider);

    return Scaffold(
      appBar: CostumAppBar(
        title: some("Medi Support"),
        actions: <Widget>[
          _buildShuffleButton(controller, model),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }

  Widget _buildShuffleButton(
    MainController controller,
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
