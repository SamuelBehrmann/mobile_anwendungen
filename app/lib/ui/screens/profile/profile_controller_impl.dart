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
      backendService.getUser().then<void>(
        (ProfileBackendServiceUser user) {
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
        },
      ).catchError(
        (_, __) => state =
            const ProfileModel.error(message: 'Fehler beim Laden des Profils'),
      ),
    );
    return const ProfileModel.loading();
  }

  @override
  void updateDescription(String description) => state.map(
        loading: (_) => null,
        data: (ProfileModelData data) => _updateProfile(
          user: data.user.copyWith(description: description),
        ),
        error: (_) => null,
      );

  void _updateProfile({required ProfileModelUser user}) => backendService
      .editUser(user.toBackendServiceUser())
      .then<void>(
        (_) => state = ProfileModel.data(user: user),
      )
      .catchError(
        (_, __) => navigationService.showSnackBar(
          message: 'Fehler beim Speichern der Änderungen',
        ),
      );

  @override
  void updateEmail(String email) => state.map(
        loading: (_) => null,
        data: (ProfileModelData data) => _updateProfile(
          user: data.user.copyWith(email: email),
        ),
        error: (_) => null,
      );

  @override
  void updateName(String name) => state.map(
        loading: (_) => null,
        data: (ProfileModelData data) => _updateProfile(
          user: data.user.copyWith(name: name),
        ),
        error: (_) => null,
      );

  @override
  void updatePassword(String password) => state.map(
        loading: (_) => null,
        data: (ProfileModelData data) => _updateProfile(
          user: data.user.copyWith(password: password),
        ),
        error: (_) => null,
      );

  @override
  void updatePhoneNumber(String phoneNumber) => state.map(
        loading: (_) => null,
        data: (ProfileModelData data) => _updateProfile(
          user: data.user.copyWith(phoneNumber: phoneNumber),
        ),
        error: (_) => null,
      );
}
