import 'dart:async';

import 'package:medi_support/ui/screens/profile/profile_controller.dart';
import 'package:medi_support/ui/screens/profile/profile_model.dart';
import 'package:medi_support/ui/screens/profile/services/profile_backend_service.dart';
import 'package:medi_support/ui/screens/profile/services/profile_navigation_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_controller_impl.g.dart';

@riverpod
class ProfileControllerImpl extends _$ProfileControllerImpl
    implements ProfileController {
  @override
  ProfileModel build({
    required ProfileNavigationService navigationService,
    required ProfileBackendService backendService,
  }) {
    unawaited(
      backendService.getUser().then((ProfileBackendServiceUser user) {
        state = ProfileModel.data(
          user: ProfileModelUser(
            id: user.id,
            name: user.name,
            email: user.email,
            profilePicturePath: user.imageUrl,
            phoneNumber: user.phoneNumber,
            description: user.description,
            password: user.password,
          ),
        );
      }),
    );
    return const ProfileModel.loading();
  }

  @override
  void editProfil() {}

  @override
  void logout() {}
}
