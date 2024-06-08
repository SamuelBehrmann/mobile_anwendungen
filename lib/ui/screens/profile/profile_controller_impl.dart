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
      const ProfileModel(
        user: User(
          name: 'John Dow',
          email: 'johnDow@gmail.com',
          phoneNumber: '1234567890',
          profilePicturePath:
              'https://images.unsplash.com/photo-1638643391904-9b551ba91eaa?q=80&w=2592&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        ),
      );

  @override
  void editProfil() {}

  @override
  void logout() {}
}
