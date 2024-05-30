import 'dart:math';

import 'package:medi_support/ui/screens/main/main_controller.dart';
import 'package:medi_support/ui/screens/main/main_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_controller_impl.g.dart';

@riverpod
class MainControllerImpl extends _$MainControllerImpl
    implements MainController {
  @override
  MainModel build() => const MainModel(color: MainModelColor.red);

  @override
  void changeColor() => state = state.copyWith(
        color: Random().nextInt(3) == 0
            ? MainModelColor.red
            : Random().nextInt(3) == 1
                ? MainModelColor.blue
                : MainModelColor.green,
      );
}
