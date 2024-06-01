import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:medi_support/services/navigation/navigation_service.dart';
import 'package:medi_support/ui/screens/main/main_controller_impl.dart';
import 'package:medi_support/ui/screens/main/main_model.dart';
import 'package:medi_support/ui/widgets/custom_bottom_navigation_bar.dart';

class MainView extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const MainView({
    super.key,
    required this.navigationShell,
  });

  static const List<CustomBottomNavBarItem> bottomNavigationBarItems =
      <CustomBottomNavBarItem>[
    CustomBottomNavBarItem(
      icon: Icons.home_rounded,
      label: 'Home',
    ),
    CustomBottomNavBarItem(
      icon: Icons.add_box,
      label: 'Post',
    ),
    CustomBottomNavBarItem(
      icon: Icons.chat,
      label: 'Chat',
    ),
    CustomBottomNavBarItem(
      icon: Icons.person_sharp,
      label: 'Profile',
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MainControllerImplProvider provider = mainControllerImplProvider(
      navigationService: ref.watch(navigationServiceAggregatorProvider),
      initalIndex: navigationShell.currentIndex,
      setIndexCallBack: navigationShell.goBranch,
    );

    final MainControllerImpl controller = ref.watch(provider.notifier);
    final MainModel model = ref.watch(provider);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: model.selectedIndex,
        onTap: controller.setIndex,
        items: bottomNavigationBarItems,
      ),
    );
  }
}
