import 'package:medi_support/ui/screens/profile/profile_controller.dart';
import 'package:medi_support/ui/screens/profile/profile_model.dart';
import 'package:medi_support/ui/screens/profile/services/profile_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_controller_impl.g.dart';

@riverpod
class ProfileControllerImpl extends _$ProfileControllerImpl
    implements ProfileController {
  @override
  ProfileModel build({
    required ProfileNavigationService navigationService,
  }) =>
      const ProfileModel(user: dummyUser);

  @override
  void editProfil() {}

  @override
  void logout() {}
}
