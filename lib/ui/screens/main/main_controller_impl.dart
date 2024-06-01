import 'package:medi_support/ui/screens/main/main_controller.dart';
import 'package:medi_support/ui/screens/main/main_model.dart';
import 'package:medi_support/ui/screens/main/services/main_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_controller_impl.g.dart';

@Riverpod(keepAlive: true)
class MainControllerImpl extends _$MainControllerImpl
    implements MainController {
  @override
  MainModel build({
    required MainNavigationService navigationService,
    required int initalIndex,
    required void Function(int index) setIndexCallBack,
  }) =>
      MainModel(
        selectedIndex: initalIndex,
      );

  @override
  void setIndex(int index) {
    if (index == 1) {
      navigationService.navigateToCreatePostView();
    } else {
      final int adjustedIndex = index == 0 ? index : index - 1;
      setIndexCallBack(adjustedIndex);
      state = state.copyWith(selectedIndex: index);
    }
  }
}
